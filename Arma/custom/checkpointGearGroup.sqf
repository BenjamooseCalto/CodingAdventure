/* CHECKPOINT GEAR AND GROUP SCRIPT 
	WRITTEN BY: PWNSOME */

/*Gear Section */
private ["_player, _dutyStatus"];

_player = _this select 0;
_dutyStatus = _this select 1;

removeBackpackGlobal _player;
removeAllWeapons _player;
removeUniform _player;
removeVest _player;
removeAllItems _player;
removeHeadgear _player;
_player removeItem "NVGoggles";
_player removeItem "NVGoggles_OPFOR";
_player removeItem "NVGoggles_INDEP";

_player forceAddUniform "U_B_GEN_Soldier_F";
_player addWeapon "arifle_SPAR_01_blk_F";
_player addVest "V_TacVest_gen_F";
_player addHeadgear "H_MilCap_gen_F";
_player addPrimaryWeaponItem "optic_Holosight_blk_F";
_player addPrimaryWeaponItem "acc_flashlight_pistol";
_player setDamage 0;
_player addMagazines ["31Rnd_556x45_Stanag_red", 6];

/*Group Section */


{ DUTY hintC "You are now on duty as a checkpoint guard! Use the radio channel 'Police Radio' to speak with other officers or run names through dispatch.
Dispatch will reply in the 'Dispatch' channel, please refrain from speaking in said channel. Welcome to the force!" };

titleText ["You are now on duty as a Checkpoint Guard!", "PLAIN", 3, false, false];

_radio = radioChannelCreate [[28, 145, 255, 1], "Police Radio", %UNIT_NAME%];
_dispatch = radioChannelCreate [[146, 38, 241, 1], "Dispatch", %UNIT_NAME%];

() radioChannelAdd [_player, unit1];
() radioChannelAdd [_player, unit1];