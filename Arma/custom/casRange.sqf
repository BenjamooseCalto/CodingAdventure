//spawns empty vehicles to use as target practice for CAS

_AA = "O_APC_Tracked_02_AA_F" createVehicle getMarkerPos "cas_AA";
_MBT = "O_MBT_02_cannon_F" createVehicle getMarkerPos "cas_MBT";
_lightVehicle = "O_MRAP_02_hmg_F" createVehicle getMarkerPos "cas_lightVehicle";

_casRange = createMarker ["casRange", getMarkerPos "cas_rangeMarker"];
"casRange" setMarkerShape "ELLIPSE";
"casRange" setMarkerSize [600, 600];
"casRange" setMarkerColor "ColorRed";

_titleMarker = createMarker ["titleMarker", getMarkerPos "cas_titleMarker"];
"titleMarker" setMarkerType "mil_triangle";
"titleMarker" setMarkerColor "ColorBlack";
"titleMarker" setMarkerText "CAS Range";

private _casSquad = createGroup east;
for "_squad" from 0 to 6 do {
	"O_soldier_M_F" createUnit [getmarkerPos "cas_squad", _casSquad];
};
_casSquad allowFleeing 0;

/*
O_Soldier_LAT_F
O_Soldier_F
 