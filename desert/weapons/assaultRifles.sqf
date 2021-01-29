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

SCAR = [
	[
		[
			"rhs_weap_mk17_LB" ,
			"rhs_mag_20Rnd_SCAR_762x51_m80_ball" ,
			6,
			false
		]
	],
	[
		"rhsusf_acc_anpeq15side",
		"rhsusf_acc_grip3"
	],
	[
		// null to backpack
	]

];

M4A1 = [
	[
		[
			"rhs_weap_m4a1_carryhandle" ,
			"rhs_mag_30Rnd_556x45_M855A1_Stanag" ,
			6,
			false
		]
	],
		[
			"rhsusf_acc_anpeq15side",
			"rhsusf_acc_grip3"
		]
		,
	[
		// null to backpack
	]
];

M16 = [
	[
		[
			"rhs_weap_m16a4_imod" ,
			"rhs_mag_30Rnd_556x45_M855A1_Stanag" ,
			6,
			false
		]
	],
	[
		"rhsusf_acc_anpeq15side",
		"rhsusf_acc_grip3"
	]
	,
	[
		// null to backpack
	]
];

HK416 = [
	[
		[
			"rhs_weap_hk416d10" ,
			"rhs_mag_30Rnd_556x45_M855A1_Stanag" ,
			6,
			false
		]
	],
	[
		"rhsusf_acc_anpeq15side",
		"rhsusf_acc_grip3"
	]
	,
	[
		// null to backpack
	]
];

GRENADIER = [
	[
		[
			"rhs_weap_m4a1_m203" ,
			"rhs_mag_30Rnd_556x45_M855A1_Stanag" ,
			6,
			false
		]
	],
	[
		"rhsusf_acc_anpeq15side",
		"rhsusf_acc_grip3"
	],
	[
		"rhs_mag_M433_HEDP",
		"rhs_mag_M433_HEDP",
		"rhs_mag_M433_HEDP",
		"rhs_mag_M433_HEDP",
		"rhs_mag_M433_HEDP",
		"rhs_mag_M433_HEDP",
		"rhs_mag_M433_HEDP",
		"rhs_mag_M433_HEDP",
		"rhs_mag_M433_HEDP",
		"rhs_mag_M433_HEDP",
		"rhs_mag_M585_white",
		"rhs_mag_M585_white",
		"rhs_mag_M585_white",
		"rhs_mag_M585_white",
		"rhs_mag_M585_white"
	]
];


_condition = _this select 0;
switch (_condition) do {
    case "SCAR": { [SCAR] execVM "loadouts\addLoadout.sqf";};
    case "M4A1": { [M4A1] execVM "loadouts\addLoadout.sqf";};
    case "M16": { [M16] execVM "loadouts\addLoadout.sqf";};
    case "HK416": { [HK416] execVM "loadouts\addLoadout.sqf";};
    case "GRENADIER": { [GRENADIER] execVM "loadouts\addLoadout.sqf";};
    default { hint "default" };
};