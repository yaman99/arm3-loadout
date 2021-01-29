// variables
_unit = player;

["Engineer"] execVM "loadouts\unitTraitUpdater.sqf";


removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;
removeGoggles _unit;

_unit forceAddUniform "rhs_uniform_FROG01_d";
_unit addVest "rhsusf_iotv_ocp";
_unit addBackpack "B_AssaultPack_cbr";

for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_elasticBandage";};
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_quikclot";};
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_morphine";};
for "_i" from 1 to 2 do {_unit addItemToUniform "rhsusf_mag_40Rnd_46x30_FMJ";};
_unit addItemToBackpack "ToolKit";
_unit addItemToBackpack "ACE_EarPlugs";
_unit addHeadgear "rhsusf_cvc_alt_helmet";
_unit addGoggles "rhs_ess_black";

_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "tf_microdagr";
_unit linkItem "tf_anprc152_7";
