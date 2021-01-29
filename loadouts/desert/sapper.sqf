// variables
_unit = player;

["ExplosiveSpecialist"] execVM "loadouts\unitTraitUpdater.sqf";



removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;
removeGoggles _unit;


_unit addHandgunItem "rhsusf_mag_15Rnd_9x19_JHP";

_unit forceAddUniform "rhs_uniform_FROG01_d";
_unit addVest "rhsusf_iotv_ocp_Teamleader";
_unit addBackpack "B_Kitbag_tan";

_unit addWeapon "rhsusf_bino_m24";

for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_an_m8hc";};
for "_i" from 1 to 4 do {_unit addItemToVest "rhs_mag_mk84";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "ACE_quikclot";};
_unit addItemToBackpack "ACE_microDAGR";
for "_i" from 1 to 2 do {_unit addItemToBackpack "ACE_morphine";};
_unit addItemToBackpack "ACE_splint";
_unit addItemToBackpack "ACE_EarPlugs";
_unit addItemToBackpack "ACE_Clacker";
_unit addItemToBackpack "ACE_wirecutter";
_unit addItemToBackpack "ACE_DefusalKit";
_unit addItemToBackpack "ACE_tourniquet";
_unit addItemToBackpack "SatchelCharge_Remote_Mag";
for "_i" from 1 to 2 do {_unit addItemToBackpack "DemoCharge_Remote_Mag";};
_unit addHeadgear "rhsusf_ach_bare_tan_headset";
_unit addGoggles "rhs_ess_black";

_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "tf_anprc152_2";

[_unit,"WhiteHead_01","ace_novoice"] call BIS_fnc_setIdentity;
