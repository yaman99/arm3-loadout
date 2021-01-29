// variables
_unit = player;


["MARKSMAN"] execVM "loadouts\unitTraitUpdater.sqf";


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
_unit addVest "V_HarnessO_brn";
_unit addBackpack "rhsusf_assault_eagleaiii_ocp";

_unit addWeapon "rhsusf_bino_m24";

_unit addItemToVest "ACE_tourniquet";
_unit addItemToVest "HandGrenade";
_unit addItemToVest "rhs_mag_an_m8hc";
for "_i" from 1 to 3 do {_unit addItemToVest "rhsusf_mag_15Rnd_9x19_JHP";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "ACE_quikclot";};
_unit addItemToBackpack "ACE_EarPlugs";
for "_i" from 1 to 2 do {_unit addItemToBackpack "ACE_morphine";};
_unit addItemToBackpack "ACE_splint";
_unit addItemToBackpack "ACE_ATragMX";
_unit addItemToBackpack "ACE_DAGR";
_unit addItemToBackpack "ACE_microDAGR";
_unit addItemToBackpack "ACE_Kestrel4500";
_unit addItemToBackpack "ACE_RangeCard";
_unit addHeadgear "rhs_booniehat2_marpatd";
_unit addGoggles "G_Bandanna_tan";

_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "tf_anprc152_6";

