/* PVP ARENA SCRIPT 
	WRITTEN BY: PWNSOME */

/* TO-DO
pick team CHECK
strip player CHECK
teleport to team spawn CHECK
alter 'in-arena' status CHECK
keep track of various statistics 
make statistics persistent */

//pick team script here
arenaPC addAction [ 
	"<t color='#FF0707'>Join Red Team</t>",
	"slasher\arena\arena_core.sqf",
	["RED"],		// arguments
	1.5,		// priority
	true,		// showWindow
	true,		// hideOnUse
	"",			// shortcut
	"true", 	// condition
	50,			// radius
	false,		// unconscious
	"",			// selection
	""			// memoryPoint
];
arenaPC addAction [ 
	"<t color='#0394FF'>Join Blue Team</t>",
	"slasher\arena\arena_core.sqf",
	["BLUE"],		// arguments
	1.5,		// priority
	true,		// showWindow
	true,		// hideOnUse
	"",			// shortcut
	"true", 	// condition
	50,			// radius
	false,		// unconscious
	"",			// selection
	""			// memoryPoint
];









/*this addAction
[
	"title",	// title
	{
		params ["_target", "_caller", "_actionId", "_arguments"]; // script
	},
	nil,		// arguments
	1.5,		// priority
	true,		// showWindow
	true,		// hideOnUse
	"",			// shortcut
	"true", 	// condition
	50,			// radius
	false,		// unconscious
	"",			// selection
	""			// memoryPoint
];














