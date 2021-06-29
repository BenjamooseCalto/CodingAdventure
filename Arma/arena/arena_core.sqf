//strips and teleports player to correct spawn
//by pwnsome

//private [_target, _caller, _id, _arenaTeam, _arenaStatus];
_target = _this select 0;
_caller = _this select 1;
_id = _this select 2;
_teamChoice = _this select 3 select 0;
_arenaTeam = _caller getVariable "SLASH_arenaTeam";
_equippedGear = getUnitLoadout _caller;

removeBackpackGlobal _caller;
removeAllWeapons _caller;
removeUniform _caller;
removeVest _caller;
removeAllItems _caller;
removeHeadgear _caller;
removeGoggles _caller;
removeAllAssignedItems _caller;

_caller setVariable ["SLASH_arenaStatus", true];

if (_teamChoice == "RED") then {
	_caller setpos [8270, 10370, 0];
	_caller setVariable ["SLASH_arenaTeam", "RED"];
	arenaRespawnRed = [_caller, "respawn_arenaRed","Red Team Spawn"] call BIS_fnc_addRespawnPosition;
	hint format["You've joined the %1 team! Head over to the ammo box to pick a loadout.", (_caller getVariable "SLASH_arenaTeam")];
} else {
if (_teamChoice == "BLUE") then {
	_caller setpos [8484, 10249, 0];
	_caller setVariable ["SLASH_arenaTeam", "BLUE"];
	arenaRespawnBlue = [_caller, "respawn_arenaBlue","Blue Team Spawn"] call BIS_fnc_addRespawnPosition;
	hint format["You've joined the %1 team! Head over to the ammo box to pick a loadout.", (_caller getVariable "SLASH_arenaTeam")];
}
};
