// Example
	//  Weapon Variable = [
		// 	"MAGAZINE NAME" ,
		// 	Rounds of magazine ,
		// 	[
		// 		"ATTACHMENTS",
		// 		"ATTACHMENTS"
		// 	] ,
		// 	[
		// 		"WEAPON 1 ",
		// 		"WEAPON 2"
		// 	]
		// ];
_trait = player getUnitTrait "NONE";
if (_trait) exitWith {
	hint "You Mush Choose a Kit";
	sleep 5;
	hint "";
};
_isMarksman = player getUnitTrait "MARKSMAN";

if(!_isMarksman) exitWith{
	hint "You Must Choose a Marksman Kit";
};

m14ebrri = [
	[
		[
			"rhs_weap_m14ebrri" ,
			"rhsusf_20Rnd_762x51_m118_special_Mag" ,
			6,
			false
		]
	],
		[
			"rhsusf_acc_anpeq15side",
			"rhsusf_acc_harris_bipod"
		],
	[
		// null to backpack
	]
];

sr25 = [
	[
		[
			"rhs_weap_sr25_ec_d" ,
			"rhsusf_20Rnd_762x51_SR25_m118_special_Mag" ,
			6,
			false
		]
	],
		[
			"rhsusf_acc_anpeq15side",
			"rhsusf_acc_harris_bipod"
		],
	[
		// null to backpack
	]
];




_condition = _this select 0;
switch (_condition) do {
    case "m14ebrri": { [m14ebrri] execVM "loadouts\addLoadout.sqf";};
    case "sr25": { [sr25] execVM "loadouts\addLoadout.sqf";};
    default { hint "default" };
};