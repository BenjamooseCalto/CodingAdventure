import requests
import asyncio

APP_DATA = {
    "title": "Razer Chroma SDK RESTful Test Application",
    "description": "This is a REST interface test application",
    "author": {
        "name": "TestApp",
        "contact": "N/A"
    },
    "device_supported": [
        "keyboard",
        "keypad",],
    "category": "application"
}

class RazerChromaConnection: #upon creating the connection, you have to keep the connection alive by sending heartbeats every "x" seconds. connections expire after 15 seconds
    def __init__(self, data:dict=APP_DATA):
        self.loop = asyncio.new_event_loop()

        r = requests.post("http://localhost:54235/razer/chromasdk", json=data)
        r = r.json()

        self.session_id = r["sessionid"]
        self.uri = r["uri"]

    async def heartbeat(self) -> int:
        r = requests.put(f"{self.uri}/heartbeat")
        print("Heartbeat Sent")

        self.tick = r.json()["tick"]
        self.loop.call_later(1, self.heartbeat)
        return await self.tick

    async def add_effect(self, device:str, effect:dict) -> int:
        match device:
            case "keyboard": device = "/keyboard"
            case "keypad": device = "/keypad"

        r = requests.post(f"{self.uri}/{device}", json=effect)

        effect_id = r.json()["effectid"]
        await print(f"Effect [{effect_id}] Added")
    
    async def run(self):
        self.loop.call_soon(self.heartbeat)
        self.loop.run_until_complete(asyncio.sleep(10))
        if self.loop.is_running():
            print("running")
        else:
            print("dead")
        
        await self.loop.close()

if __name__ == "__main__":
    conn = RazerChromaConnection()
    conn.run()