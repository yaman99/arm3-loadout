
// variables
_unit = player;
//
["LAT"] execVM "loadouts\unitTraitUpdater.sqf";


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
_unit addVest "rhsusf_iotv_ocp_SAW";
_unit addBackpack "rhsusf_assault_eagleaiii_ocp";

_unit addWeapon "rhsusf_bino_m24";

_unit addItemToVest "HandGrenade";
_unit addItemToVest "rhs_mag_an_m8hc";

for "_i" from 1 to 2 do {_unit addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "ACE_quikclot";};
_unit addItemToBackpack "ACE_EarPlugs";
_unit addItemToBackpack "ACE_microDAGR";
for "_i" from 1 to 2 do {_unit addItemToBackpack "ACE_morphine";};
_unit addItemToBackpack "ACE_splint";
_unit addItemToBackpack "ACE_tourniquet";
_unit addHeadgear "rhsusf_lwh_helmet_marpatd_headset";

_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "tf_anprc152_2";

