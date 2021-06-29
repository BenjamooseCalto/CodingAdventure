// opens east harbor gate

_doorPhase = harborGateEast animationPhase "Door_1_rot";

if (_doorPhase == 1) then {
	harborGateEast animate ["Door_1_rot", 0]
}
else {
	harborGateEast animate ["Door_1_rot", 1]
}
