

_trait = player getUnitTrait "NONE";
if (_trait) exitWith {
	hint "You Mush Choose a Kit";
	sleep 5;
	hint "";
};
_isHAT = player getUnitTrait "HAT";
_isLAT = player getUnitTrait "LAT";

if(!_isHAT && !_isLAT) exitWith{
	hint "You Must Choose a AT Kit";
};

maaws = [
	[
		[
			"rhs_weap_maaws" ,
			"rhs_mag_maaws_HEAT" ,
			3,
			true
		]
	],
		[
			"rhs_optic_maaws"
		],
	[
		// null to backpack
	]
];




_condition = _this select 0;
switch (_condition) do {
    case "maaws": { [maaws] execVM "loadouts\addLoadout.sqf";};
    case "sr25": { [sr25] execVM "loadouts\addLoadout.sqf";};
    default { hint "default" };
};