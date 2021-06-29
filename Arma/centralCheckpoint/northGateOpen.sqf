// opens north central gate

_doorPhase = centralGateNorth animationPhase "Door_1_rot";

if (_doorPhase == 1) then {
	centralGateNorth animate ["Door_1_rot", 0]
}
else {
	centralGateNorth animate ["Door_1_rot", 1]
}
