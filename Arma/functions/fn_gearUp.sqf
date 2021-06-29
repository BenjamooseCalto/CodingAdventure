//gearup script loadout thing
//by pwnsome


_caller = _this select 1;
_gunChoice = _this select 3 select 0;
//_callerBackpack = backpack _caller;
_hasBackpack = isNil backpack _caller; //inverted

_caller forceAddUniform "U_B_CTRG_3";
_caller addVest "V_PlateCarrier1_rgr";
_caller addHeadgear "H_HelmetB_snakeskin";
_caller setDamage 0;
_caller linkItem "ItemMap";
_caller linkItem "ItemRadio";
_caller linkItem "ItemNVGogglesB_blk_F";
_caller linkItem "ItemCompass";
_caller linkItem "ItemWatch";

if (_hasBackpack == true) then {
	_playerBackpack = _caller addBackpack "B_ViperHarness_blk_F";
};
if (_gunChoice == "AK12") then {
	_caller addMagazines ["30Rnd_762x39_Mag_F", 20];
	_caller addWeapon "arifle_ak12_f";
	_caller addPrimaryWeaponItem "optic_MRCO";
	_caller setVariable ["SLASH_arenaLoadout", "AK12"];
};
if (_gunChoice == "MK1") then {
	_caller addMagazines ["20Rnd_762x51_Mag", 20];
	_caller addWeapon "srifle_DMR_03_Tan_F";
	_caller addPrimaryWeaponItem "optic_MRCO";
	_caller setVariable ["SLASH_arenaLoadout", "MK1"];
};
if (_gunChoice == "SPAR17") then {
	_caller addMagazines ["20Rnd_762x51_Mag", 20];
	_caller addWeapon "arifle_spar_03_snd_f";
	_caller addPrimaryWeaponItem "optic_MRCO";
	_caller setVariable ["SLASH_arenaLoadout", "SPAR17"];
};

true
