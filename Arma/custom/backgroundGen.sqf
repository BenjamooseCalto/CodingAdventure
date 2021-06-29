/* Chooses a random name from an array, and attaches history and/or current
charges against said person based on a given % 
written by: Pwnsome */



// possible charges
_charges = [
	"Intoxication Manslaughter", 
	"First Degree Murder", 
	"Armed Robbery", 
	"Strong Arm Robbery", 
	"Assault with a Deadly Beam of Death", 
	"Driving under the influence", 
	"Careless Driving", 
	"Reckless Driving", 
	"Racketeering", 
	"Drug Trafficking over 10,000lbs", 
	"Posession of Methamphetamine", 
	"Impersonation of Public Safety Official", 
	"Assault", 
	"Indecency with a feral creature",
	"Speeding",
	"Speeding over 100",
	"Threatening an Officer",
	"Posession of Marijuana",
	"Illegal Posession of a Firearm",
	"Weapons Trafficking",
	"Terroristic Threats",
	"Terrorism",
	"Participation in a mass casualty event",
	"Domestic Terrorism",
	"Murder of a Law Enforcement Official",
	"Homicide",
	"Manslaughter",
	//to be expanded upon
];

// legal status
_standings = [
	"Outstanding Felony Warrant",
	"Unpaid Parking Ticket",
	"Unpaid Speeding Ticket",
	"Very Dangerous Individual, multiple outstanding warrants",
	"Outstanding Bench Warrant"
	"Wanted for Capital Murder"
	"N/A",
	//to be expanded upon
];

//flags equation - make proper percentage calc
_num1 = [random(1, 50, 100)];
_num2 = [random(1, 50, 100)];
_num3 = [random(1, 50, 100)];
_flagsNum = [num1 + num2 + num3];
if (flagsNum >= 275) then {
	_chargeOne = selectRandom charges;
		[if (num3 >= 85) then {
			_chargeTwo selectRandom charges;
		}];
} else {
	hint "This person has a clean record!"
};	
if (flagsNum >= 275) then {
	_status = selectRandom standings
} else {
	hint "N/A"
};
