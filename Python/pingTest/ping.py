#ok so there is a solar flare approaching earth and will hit it in a few days, I want to test as many of its effects as possible.

import os
import ctypes
import time
import threading
import subprocess
import numpy as np

from datetime import datetime

START_TIME = datetime.utcnow()
DIR = os.path.dirname(__file__)
OUT_DIR = os.path.join(DIR, "output_data")
DATA_DIR = os.path.join(DIR, "data")

user32 = ctypes.windll.user32
print(START_TIME)

def get_time():
    return(datetime.utcnow())

def average(lst):
    return sum(lst) / len(lst)

def test_ping(num_packets=10):
    ping = subprocess.run(["ping", "1.1.1.1", "-n", str(num_packets)], capture_output=True)
    with open(os.path.join(DATA_DIR, "ping.txt"), "w") as file:
        file.write(ping.stdout.decode("utf-8"))
    parse_ping()

def parse_ping():
    pings = []
    with open(os.path.join(DATA_DIR, "ping.txt"), "r") as file:
        for line in file:
            if "Packets" in line:
                packet_line = line
            if "Reply" in line:
                ping_time = line.split()[4]
                ping_time = ping_time.replace("ms", "")
                ping_time = ping_time.replace("time=", "")
                pings.append(int(ping_time))

    pings = remove_outliers(pings)
    sorted_pings = sorted(pings)

    ping_min = sorted_pings[0]
    ping_max = sorted_pings[-1]
    ping_avg = round(average(sorted_pings), 2)
        
    packets_sent = packet_line.split()[3]
    packets_received = packet_line.split()[6]
    packets_lost = packet_line.split()[9]
    packets_sent, packets_received, packets_lost = packets_sent.replace(",", ""), packets_received.replace(",", ""), packets_lost.replace(",", "")
    packets_loss_percent = int((int(packets_lost) / int(packets_sent)) * 100)

    now = get_time().strftime("%Y-%m-%d | %H:%M:%S.%f")
    timestamp = f"\n[{now}][UTC]"
    seperator = "-----------------------------------------------------------------"

    packets_str = f"[PACKETS] Sent: {packets_sent} | Received: {packets_received} | Lost: {packets_lost} | Loss: {packets_loss_percent}%"
    ping_str = f"[PING] Minimum: {ping_min} | Maximum: {ping_max} | Average: {ping_avg}"

    out_string = f"{timestamp}\n{packets_str}\n{ping_str}\n{seperator}"
    with open(os.path.join(OUT_DIR, "ping_output.txt"), "a") as file:
        file.write(out_string)

def remove_outliers(ping):
    ping = np.array(ping)
    mean = np.mean(ping)
    std_dev = np.std(ping)
    distance_from_mean = abs(ping - mean)
    max_deviations = 2
    not_outlier = distance_from_mean < max_deviations * std_dev
    new_ping = ping[not_outlier]
    return new_ping

def run_ping_test(minutes, num_packets):
    sleep_time = 30
    num_tests = int(minutes * 60 / sleep_time)
    i = 1
    while True:
        if i == num_tests:
            break
        test_ping(num_packets)
        time.sleep(sleep_time)
        print(f"Test {i} complete.")
        i += 1

run_ping_test(30, 100)

        