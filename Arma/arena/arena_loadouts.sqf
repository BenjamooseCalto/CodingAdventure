//adds loadout options to ammo boxes in the arena
//by pwnsome

//SLASH_fn_ak12 = preprocessFile "slasher\functions\fn_ak12.sqf";

_arenaTeam = player getVariable "SLASH_arenaTeam";
_isRed = "SLASH_arenaTeam" == "RED";
_isBlue = "SLASH_arenaTeam" == "BLUE";
_ammoBoxes = [ammoRed, ammoBlue];


//loadouts
ammoRed addAction [ 
	"Grab AK-12 Loadout",
	{call SLASH_fnc_gearUp;},
	["AK12"],	// arguments
	1.5,		// priority
	true,		// showWindow
	true,		// hideOnUse
	"",			// shortcut
	"true", 	// condition
	10,			// radius
	false,		// unconscious
	"",			// selection
	""			// memoryPoint
];
ammoRed addAction [ 
	"Grab MK-1 Loadout",
	{call SLASH_fnc_gearUp;},
	["MK1"],	// arguments
	1.5,		// priority
	true,		// showWindow
	true,		// hideOnUse
	"",			// shortcut
	"true", 	// condition
	10,			// radius
	false,		// unconscious
	"",			// selection
	""			// memoryPoint
];
ammoRed addAction [ 
	"Grab SPAR-17 Loadout",
	{call SLASH_fnc_gearUp;},
	["SPAR17"],	// arguments
	1.5,		// priority
	true,		// showWindow
	true,		// hideOnUse
	"",			// shortcut
	"true", 	// condition
	10,			// radius
	false,		// unconscious
	"",			// selection
	""			// memoryPoint
];
ammoBlue addAction [ 
	"Grab AK-12 Loadout",
	{call SLASH_fnc_gearUp;},
	["AK12"],	// arguments
	1.5,		// priority
	true,		// showWindow
	true,		// hideOnUse
	"",			// shortcut
	"true", 	// condition
	10,			// radius
	false,		// unconscious
	"",			// selection
	""			// memoryPoint
];
ammoBlue addAction [ 
	"Grab MK-1 Loadout",
	{call SLASH_fnc_gearUp;},
	["MK1"],	// arguments
	1.5,		// priority
	true,		// showWindow
	true,		// hideOnUse
	"",			// shortcut
	"true", 	// condition
	10,			// radius
	false,		// unconscious
	"",			// selection
	""			// memoryPoint
];
ammoBlue addAction [ 
	"Grab SPAR-17 Loadout",
	{call SLASH_fnc_gearUp;},
	["SPAR17"],	// arguments
	1.5,		// priority
	true,		// showWindow
	true,		// hideOnUse
	"",			// shortcut
	"true", 	// condition
	10,			// radius
	false,		// unconscious
	"",			// selection
	""			// memoryPoint
];