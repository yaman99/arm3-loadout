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

_isHMG = player getUnitTrait "HMG";
_isLMG = player getUnitTrait "LMG";

if(!_isHMG && !_isLMG) exitWith{
	hint "You Must Choose a MG Kit";
};


_m240b = [
	[
		[
			"rhs_weap_m240B" ,
			"rhsusf_100Rnd_762x51" ,
			6,
			false
		]
	],
	[
		"rhsusf_acc_anpeq15side_bk",
		"rhsusf_acc_elcan_ard_3d",
		"rhsusf_acc_ARDEC_M240"
	],
	[
		// null to backpack
	]
];

_m249 = [
	[
		[
			"rhs_weap_m249_pip_L_para" ,
			"rhsusf_200Rnd_556x45_box" ,
			6,
			false
		]
	],
	[
		"rhsusf_acc_anpeq15side_bk",
		"rhsusf_acc_saw_bipod",
		"rhsusf_acc_nt4_black"
	],
	[
		// null to backpack
	]
];



_condition = _this select 0;
switch (_condition) do {
    case "m240b": { [_m240b] execVM "loadouts\addLoadout.sqf";};
    case "m249": { [_m249] execVM "loadouts\addLoadout.sqf";};
    default { hint "default" };
};




