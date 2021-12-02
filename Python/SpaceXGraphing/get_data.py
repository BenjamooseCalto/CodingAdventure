# this file IDEALLY would get new data from the community API and make it available to the other script (telemetry.py) - but it looks like it hasn't been updated with new data in a while...

import requests
import json
import os

DIR = os.path.dirname(os.path.realpath(__file__))


company = "spacex"
mission_id = "DART"
r = requests.get(
    f"http://api.launchdashboard.space/v2/launches/{company}?flight_number=105"
)
print(r.status_code)
print(r.json()["mission_id"])
with open(f"{DIR}/dart_raw.json", "w") as f:
    json.dump(r.json(), f, indent=4)
