import statistics
import os


def ping_avgs():
    wireless_ping = [12, 15, 15, 15, 16]
    wireless_down = [358.28, 358.01, 346.81, 329.42, 310.13]
    wireless_up = [23.59, 23.64, 23.61, 23.54, 23.63]

    wireless_ping_avg = statistics.mean(wireless_ping)
    wireless_down_avg = statistics.mean(wireless_down)
    wireless_up_avg = statistics.mean(wireless_up)

    wired_ping = [1]
    wired_down = [1]
    wired_up = [1]

    wired_ping_avg = statistics.mean(wired_ping)
    wired_down_avg = statistics.mean(wired_down)
    wired_up_avg = statistics.mean(wired_up)

    string = f"""
    WIRELESS AVERAGES:
        Ping: {wireless_ping_avg}
        Download: {wireless_down_avg}
        Upload: {wireless_up_avg}

    WIRED AVERAGES:
        Ping: {wired_ping_avg}
        Download: {wired_down_avg}
        Upload: {wired_up_avg}
    """
    print(string)


def ping_test():
    hostname = "1.1.1.1"
    response = os.system(f"ping {hostname} /n 100")

    wireless_ping_avg = 32
    wireless_ping_max = 185
    wireless_ping_min = 17
    wireless_loss_percent = 0

    wired_ping_avg = 26
    wired_ping_max = 105
    wired_ping_min = 17
    wired_loss_percent = 0


if __name__ == "__main__":
    ping_test()
