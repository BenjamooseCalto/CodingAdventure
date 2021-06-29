// opens west harbor gate

_doorPhase = harborGateWest animationPhase "Door_1_rot";

if (_doorPhase == 1) then {
	harborGateWest animate ["Door_1_rot", 0]
}
else {
	harborGateWest animate ["Door_1_rot", 1]
}
