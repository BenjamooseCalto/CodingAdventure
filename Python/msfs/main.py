from SimConnect import *

try:
    sim = SimConnect()
except ConnectionError:
    print('Sim not Running!')
    sim = False

if sim:
    aq = AircraftRequests(sim, _time=2000)

    altitude = aq.find('PLANE_ALTITUDE')
    altitude.time = 200
    altitude = aq.get('PLANE_ALTITUDE')
    altitude = altitude + 1000
    print(altitude)
else:
    pass