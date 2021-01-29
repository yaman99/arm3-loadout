
_unit = player;

["RIFLEMAN"] execVM "loadouts\unitTraitUpdater.sqf";


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
_unit addVest "rhsusf_iotv_ocp_Squadleader";
_unit addBackpack "B_Kitbag_tan";

_unit addWeapon "rhsusf_bino_m24";

_unit addItemToVest "ACE_tourniquet";
for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_an_m8hc";};
for "_i" from 1 to 3 do {_unit addItemToVest "rhsusf_mag_15Rnd_9x19_JHP";};
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_mk84";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "ACE_quikclot";};
_unit addItemToBackpack "ACE_EarPlugs";
for "_i" from 1 to 2 do {_unit addItemToBackpack "ACE_morphine";};
_unit addItemToBackpack "ACE_microDAGR";
_unit addItemToBackpack "ACE_splint";
_unit addHeadgear "rhsusf_lwh_helmet_marpatd";
_unit addGoggles "rhs_googles_clear";

_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "tf_anprc152_2";
_unit linkItem "ItemGPS";
