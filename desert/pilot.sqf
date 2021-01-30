
// variables
_unit = player;


["PILOT"] execVM "loadouts\unitTraitUpdater.sqf";

removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;
removeGoggles _unit;

_unit addWeapon "rhsusf_weap_MP7A2";
_unit addPrimaryWeaponItem "optic_Yorris";
_unit addPrimaryWeaponItem "rhsusf_mag_40Rnd_46x30_FMJ";

_unit addHandgunItem "rhsusf_mag_15Rnd_9x19_FMJ";

_unit forceAddUniform "U_B_HeliPilotCoveralls";
_unit addBackpack "B_Parachute";
for "_i" from 1 to 5 do {_unit addItemToBackpack "ACE_splint";};
for "_i" from 1 to 5 do {_unit addItemToBackpack "ACE_CableTie";};
_unit addItemToBackpack "ACE_EntrenchingTool";
_unit addItemToBackpack "ACE_IR_Strobe_Item";
_unit addItemToUniform "rhsusf_ANPVS_14";
_unit addItemToUniform "ACE_fieldDressing";
_unit addItemToUniform "ACE_packingBandage";
_unit addItemToUniform "ACE_morphine";
_unit addItemToUniform "ACE_tourniquet";
_unit addHeadgear "RHS_jetpilot_usaf";
_unit addGoggles "rhs_googles_clear";

_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "tf_microdagr";
_unit linkItem "tf_anprc152_1";
_unit linkItem "ItemGPS";
_unit linkItem "rhsusf_ANPVS_15";