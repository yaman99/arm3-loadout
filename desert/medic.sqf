// variables
_unit = player;


// set unit trait
["Medic"] execVM "loadouts\unitTraitUpdater.sqf";


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
_unit addVest "rhsusf_iotv_ocp_Medic";
_unit addBackpack "B_Kitbag_tan";

_unit addWeapon "rhsusf_bino_m24";

for "_i" from 1 to 2 do {_unit addItemToUniform "rhs_mag_an_m8hc";};
for "_i" from 1 to 3 do {_unit addItemToVest "rhsusf_mag_15Rnd_9x19_JHP";};
for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
for "_i" from 1 to 15 do {_unit addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 6 do {_unit addItemToBackpack "ACE_bloodIV_250";};
for "_i" from 1 to 4 do {_unit addItemToBackpack "ACE_bloodIV_500";};
for "_i" from 1 to 15 do {_unit addItemToBackpack "ACE_quikclot";};
for "_i" from 1 to 15 do {_unit addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "ACE_adenosine";};
_unit addItemToBackpack "ACE_EarPlugs";
for "_i" from 1 to 6 do {_unit addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 6 do {_unit addItemToBackpack "ACE_morphine";};
_unit addItemToBackpack "ACE_microDAGR";
for "_i" from 1 to 2 do {_unit addItemToBackpack "ACE_personalAidKit";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "ACE_salineIV_500";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "ACE_salineIV_250";};
for "_i" from 1 to 4 do {_unit addItemToBackpack "ACE_splint";};
for "_i" from 1 to 4 do {_unit addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 4 do {_unit addItemToBackpack "ACE_tourniquet";};
_unit addItemToBackpack "ACE_surgicalKit";
_unit addHeadgear "rhsusf_lwh_helmet_marpatd_headset";

_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "tf_anprc152_5";

