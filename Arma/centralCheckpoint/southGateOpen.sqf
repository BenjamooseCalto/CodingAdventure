// opens south central gate

_doorPhase = centralGateSouth animationPhase "Door_1_rot";

if (_doorPhase == 1) then {
	centralGateSouth animate ["Door_1_rot", 0]
}
else {
	centralGateSouth animate ["Door_1_rot", 1]
}
