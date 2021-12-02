# this file uses data from a community API to graph telemetry data in a (hopefully) easy to read way.

import logging
import json
import matplotlib.pyplot as plt
import numpy as np
import os

DIR = os.path.dirname(os.path.realpath(__file__))

logging.basicConfig(level=logging.DEBUG)

analysed_data = f"{DIR}/analysed_data.json"
raw_data = f"{DIR}/data.json"

time = np.array([])
vel = np.array([])
alt = np.array([])
y_vel = np.array([])
x_vel = np.array([])
angle = np.array([])
accel = np.array([])
downrange = np.array([])
q = np.array([])
events = []

with open(analysed_data, "r") as file:
    data = json.load(file)
    for entry in data[0]["telemetry"]:
        time = np.append(time, entry["time"])
        vel = np.append(vel, entry["velocity"])
        alt = np.append(alt, entry["altitude"])
        y_vel = np.append(y_vel, entry["velocity_y"])
        x_vel = np.append(x_vel, entry["velocity_x"])
        angle = np.append(angle, entry["angle"])
        accel = np.append(accel, entry["acceleration"])
        q = np.append(q, entry["q"])
        downrange = np.append(downrange, entry["downrange_distance"])

with open(raw_data, "r") as file:
    data = json.load(file)
    for event in data["events"]:
        event = {"key": event["key"], "time": event["time"]}
        events.append(event)

fig = plt.figure()
axes = fig.subplots(nrows=2, ncols=4, sharex=True, sharey=False)

(
    vel_gr,
    alt_gr,
    y_vel_gr,
    x_vel_gr,
    angle_gr,
    accel_gr,
    downrange_gr,
    q_gr,
) = axes.flatten()

vel_gr.set_title("Velocity")
alt_gr.set_title("Altitude")
y_vel_gr.set_title("Y Velocity")
x_vel_gr.set_title("X Velocity")
angle_gr.set_title("Angle")
accel_gr.set_title("Acceleration")
downrange_gr.set_title("Downrange Distance")
q_gr.set_title("Q")

graphs = {
    vel_gr: vel,
    alt_gr: alt,
    y_vel_gr: y_vel,
    x_vel_gr: x_vel,
    angle_gr: angle,
    accel_gr: accel,
    downrange_gr: downrange,
    q_gr: q,
}
for graph in graphs:
    graph.set(xlabel="Time")
    graph.plot(time, graphs[graph])
    for event in events:
        event_time = event["time"]
        event_label = event["key"]
        event_point = np.interp(event_time, time, graphs[graph])

        graph.plot(event_time, event_point, "r2", label=event_label)
        graph.annotate(
            event_label,
            (event_time, event_point),
            xytext=(5, 5),
            textcoords="offset pixels",
        )

plt.show()
