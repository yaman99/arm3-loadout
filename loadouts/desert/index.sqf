["NONE"] execVM "loadouts\unitTraitUpdater.sqf";

loadoutFunction_path = "loadouts\addLoadout.sqf";

rols_path = "loadouts\desert\";
wepons_path = "loadouts\desert\weapons\";

// assets paths
rols_icons_path = "loadouts\assets\rols\";
weapons_icons_path = "loadouts\assets\weapons\";

LoadoutBoxs = _this select 0;
//  test

// [loadout_box,0,["ACE_MainActions"]] call ace_interact_menu_fnc_removeActionFromClass;

{
	_uniforms = ["uniforms" , "Uniforms" , "", {} ,{true}] call ace_interact_menu_fnc_createAction;
	[_x , 0 ,["ACE_MainActions"] , _uniforms , true] call ace_interact_menu_fnc_addActionToClass;

// Kits parents
	// assult classes
	_assaultClasses = ["assaultClasses" , "Assault Classes" , "", {} ,{true}] call ace_interact_menu_fnc_createAction;
	[_x , 0 ,["ACE_MainActions", "uniforms"] , _assaultClasses , true] call ace_interact_menu_fnc_addActionToClass;

		// squad leader
		_squadLeader = ["Squad_Leader" , "Squad Leader" , rols_icons_path+"Icon_Squad_Leader_kit.paa", { execVM format ["%1squadLeader.sqf", rols_path]} ,{true}] call ace_interact_menu_fnc_createAction;
		[_x , 0 ,["ACE_MainActions" , "uniforms","assaultClasses"] , _squadLeader , true] call ace_interact_menu_fnc_addActionToClass;

		// rifleman
		_rifleman = ["RIFLEMAN" , "Rifleman" , rols_icons_path+"Icon_Rifleman_kit.paa", { execVM format ["%1rifleman.sqf", rols_path]} ,{true}] call ace_interact_menu_fnc_createAction;
		[_x , 0 ,["ACE_MainActions" , "uniforms","assaultClasses"] , _rifleman , true] call ace_interact_menu_fnc_addActionToClass;

		// Heavy Anti-Tank
		_HAT = ["HAT" , "Heavy Anti-Tank" , rols_icons_path+"Icon_Heavy_Anti_Tank_kit.paa", { execVM format ["%1HAT.sqf", rols_path]} ,{true}] call ace_interact_menu_fnc_createAction;
		[_x , 0 ,["ACE_MainActions" , "uniforms","assaultClasses"] , _HAT , true] call ace_interact_menu_fnc_addActionToClass;


	// support classes
	_supportClasess = ["supportClasses" , "Support Classes" , "", {} ,{true}] call ace_interact_menu_fnc_createAction;
	[_x , 0 ,["ACE_MainActions", "uniforms"] , _supportClasess , true] call ace_interact_menu_fnc_addActionToClass;
		// Medic
		_medic = ["MEDIC" , "Medic" , rols_icons_path+"Icon_Medic_kit.paa" , { execVM format ["%1medic.sqf", rols_path]} ,{true}] call ace_interact_menu_fnc_createAction;
		[_x , 0 ,["ACE_MainActions" ,"uniforms", "supportClasses"] , _medic , true] call ace_interact_menu_fnc_addActionToClass;

		// Light Anti-Tank
		_LAT = ["LAT" , "Light Anti-Tank" , rols_icons_path+"Icon_Light_Anti_Tank_kit.paa" , { execVM format ["%1LAT.sqf", rols_path]} ,{true}] call ace_interact_menu_fnc_createAction;
		[_x , 0 ,["ACE_MainActions" ,"uniforms", "supportClasses"] , _LAT , true] call ace_interact_menu_fnc_addActionToClass;

		// Light Machine Gun
		_LMG = ["LMG" , "Light Machine Gun" , rols_icons_path+"Icon_Automatic_Rifleman_kit.paa" , { execVM format ["%1LMG.sqf", rols_path]} ,{true}] call ace_interact_menu_fnc_createAction;
		[_x , 0 ,["ACE_MainActions" ,"uniforms", "supportClasses"] , _LMG , true] call ace_interact_menu_fnc_addActionToClass;

		// Heavy Machine Gun
		_HMG = ["HMG" , "Heavy Machine Gun" , rols_icons_path+"Icon_Machine_Gunner_kit.paa" , { execVM format ["%1HMG.sqf", rols_path]} ,{true}] call ace_interact_menu_fnc_createAction;
		[_x , 0 ,["ACE_MainActions" ,"uniforms", "supportClasses"] , _HMG , true] call ace_interact_menu_fnc_addActionToClass;

		// Marksman
		_MARKSMAN = ["MARKSMAN" , "Marksman" , rols_icons_path+"Icon_Marksman_kit.paa" , { execVM format ["%1marksman.sqf", rols_path]} ,{true}] call ace_interact_menu_fnc_createAction;
		[_x , 0 ,["ACE_MainActions" ,"uniforms", "supportClasses"] , _MARKSMAN , true] call ace_interact_menu_fnc_addActionToClass;

		//
	// eng classes
	_engClasess = ["engClasses" , "Eng Classes" , "", {} ,{true}] call ace_interact_menu_fnc_createAction;
	[_x , 0 ,["ACE_MainActions", "uniforms"] , _engClasess , true] call ace_interact_menu_fnc_addActionToClass;
		// anti air

		// Sapper (explosive)
		_sapper = ["SAPPER" , "Sapper" , rols_icons_path+"Icon_Sapper_kit.paa" , { execVM format ["%1sapper.sqf", rols_path]} ,{true}] call ace_interact_menu_fnc_createAction;
		[_x , 0 ,["ACE_MainActions","uniforms" , "engClasses"] , _sapper , true] call ace_interact_menu_fnc_addActionToClass;

		// crewman
		_crewman = ["CREWMAN" , "Crewman" , rols_icons_path+"Icon_Crewman_kit.paa" , { execVM format ["%1crewman.sqf", rols_path]} ,{true}] call ace_interact_menu_fnc_createAction;
		[_x , 0 ,["ACE_MainActions","uniforms" , "engClasses"] , _crewman , true] call ace_interact_menu_fnc_addActionToClass;

		_Pilot = ["Pilot" , "Pilot" , rols_icons_path+"Icon_Pilot.paa" , { execVM format ["%1pilot.sqf", rols_path]} ,{true}] call ace_interact_menu_fnc_createAction;
		[_x , 0 ,["ACE_MainActions","uniforms" , "engClasses"] , _Pilot , true] call ace_interact_menu_fnc_addActionToClass;
		// UAV


/*
__________________________________________WEAPONS_________________________________________________________________________________________________________________________________________________________
*/
_m16_Icon = getText (configfile >> "CfgWeapons" >> "rhs_weap_m16a4_imod" >> "picture");
_m4_Icon = getText (configfile >> "CfgWeapons" >> "rhs_weap_m4a1" >> "picture");
_m4_grenadier_Icon = getText (configfile >> "CfgWeapons" >> "rhs_weap_m4a1_m203" >> "picture");
_hk_Icon = getText (configfile >> "CfgWeapons" >> "rhs_weap_hk416d10" >> "picture");
_scar_Icon = getText (configfile >> "CfgWeapons" >> "rhs_weap_mk17_LB" >> "picture");



// Assult Rifles (parent)
_weapons = ["WEAPONS" , "Weapons" , format ["%1Gun_Box_icon.paa", weapons_icons_path], {} ,{true}] call ace_interact_menu_fnc_createAction;
[_x , 0 ,["ACE_MainActions"] , _weapons , true] call ace_interact_menu_fnc_addActionToClass;

	_assult_rifles = ["assult_rifles" , "Assult Rifles" , format ["%1rifle.paa", weapons_icons_path], {} ,{true}] call ace_interact_menu_fnc_createAction;
	[_x , 0 ,["ACE_MainActions", "WEAPONS"] , _assult_rifles , true] call ace_interact_menu_fnc_addActionToClass;

		// rhs_weap_m16a4_imod (child)
		_m16 = ["M16" , "M16" , _m16_Icon , { ["M16"] execVM format ["%1assaultRifles.sqf", wepons_path]} ,{true}] call ace_interact_menu_fnc_createAction;
		[_x , 0 ,["ACE_MainActions" ,"WEAPONS" ,"assult_rifles"] , _m16 , true] call ace_interact_menu_fnc_addActionToClass;

		// rhs_weap_m4a1 (child)
		_m4 = ["M4A1" , "M4" , _m4_Icon , { ["M4A1"] execVM format ["%1assaultRifles.sqf", wepons_path]} ,{true}] call ace_interact_menu_fnc_createAction;
		[_x , 0 ,["ACE_MainActions" ,"WEAPONS"  , "assult_rifles"] , _m4 , true] call ace_interact_menu_fnc_addActionToClass;

		// rhs_weap_m4a1_m203 => grenadier (child)
		_m4_grenadier = ["GRENADIER" , "M4 + Grenadier" , _m4_grenadier_Icon , {["GRENADIER"] execVM format ["%1assaultRifles.sqf", wepons_path]} ,{true}] call ace_interact_menu_fnc_createAction;
		[_x , 0 ,["ACE_MainActions"  ,"WEAPONS" , "assult_rifles"] , _m4_grenadier , true] call ace_interact_menu_fnc_addActionToClass;

		// rhs_weap_hk416d10 (child)
		_hk = ["HK416" , "hk416d10" , _hk_Icon , {["HK416"] execVM format ["%1assaultRifles.sqf", wepons_path]} ,{true}] call ace_interact_menu_fnc_createAction;
		[_x , 0 ,["ACE_MainActions"  ,"WEAPONS" , "assult_rifles"] , _hk , true] call ace_interact_menu_fnc_addActionToClass;

		// this addWeapon "rhs_weap_mk17_LB"  (child)
		_scar = ["SCAR" , "SCAR" , _scar_Icon , { ["SCAR"] execVM format ["%1assaultRifles.sqf", wepons_path]} ,{true}] call ace_interact_menu_fnc_createAction;
		[_x , 0 ,["ACE_MainActions" ,"WEAPONS"  , "assult_rifles"] , _scar , true] call ace_interact_menu_fnc_addActionToClass;

	_m240b_Icon = getText (configfile >> "CfgWeapons" >> "rhs_weap_m240B" >> "picture");
	_m249_Icon = getText (configfile >> "CfgWeapons" >> "rhs_weap_m249_pip_L_para" >> "picture");

	// machine Guns (parent)
	_machineGuns = ["MACHINEGUNS" , "Machine Guns" , format ["%1MG.paa", weapons_icons_path], {} ,{true}] call ace_interact_menu_fnc_createAction;
	[_x , 0 ,["ACE_MainActions" ,"WEAPONS" ] , _machineGuns , true] call ace_interact_menu_fnc_addActionToClass;

		// HMG rhs_weap_m240B(child)
		_m240b = ["m240b" , "m240b" , _m240b_Icon , { ["m240b"] execVM format ["%1machineGuns.sqf", wepons_path]} ,{true}] call ace_interact_menu_fnc_createAction;
		[_x , 0 ,["ACE_MainActions" ,"WEAPONS" , "MACHINEGUNS"] , _m240b , true] call ace_interact_menu_fnc_addActionToClass;

		// LMG rhs_weap_m249_pip_L_para (child)
		_m249 = ["m249" , "m249" , _m249_Icon , { ["m249"] execVM format ["%1machineGuns.sqf", wepons_path]} ,{true}] call ace_interact_menu_fnc_createAction;
		[_x , 0 ,["ACE_MainActions" ,"WEAPONS" , "MACHINEGUNS"] , _m249 , true] call ace_interact_menu_fnc_addActionToClass;

	_m14ebrri_Icon = getText (configfile >> "CfgWeapons" >> "rhs_weap_m14ebrri" >> "picture");
	_sr25_Icon = getText (configfile >> "CfgWeapons" >> "rhs_weap_sr25_ec_d" >> "picture");

	// Snipers Guns (parent)
	_snipers = ["SNIPERS" , "Snipers" , format ["%1sniper.paa", weapons_icons_path], {} ,{true}] call ace_interact_menu_fnc_createAction;
	[_x , 0 ,["ACE_MainActions","WEAPONS" ] , _snipers , true] call ace_interact_menu_fnc_addActionToClass;

		// rhs_weap_m14ebrri (child)
		_m14ebrri = ["m14ebrri" , "m14ebrri" , _m14ebrri_Icon , { ["m14ebrri"] execVM format ["%1snipers.sqf", wepons_path]} ,{true}] call ace_interact_menu_fnc_createAction;
		[_x , 0 ,["ACE_MainActions","WEAPONS"  , "SNIPERS"] , _m14ebrri , true] call ace_interact_menu_fnc_addActionToClass;

		// rhs_weap_sr25_ec_d (child)
		_sr25 = ["sr25" , "sr25" , _sr25_Icon , { ["sr25"] execVM format ["%1snipers.sqf", wepons_path]} ,{true}] call ace_interact_menu_fnc_createAction;
		[_x , 0 ,["ACE_MainActions","WEAPONS"  , "SNIPERS"] , _sr25 , true] call ace_interact_menu_fnc_addActionToClass;


	_R1_Icon = getText (configfile >> "CfgWeapons" >> "rhs_weap_maaws" >> "picture");

	// Rocket Lunchers (parent)
	_RocketLuncher = ["RocketL" , "Rocket Lunchers" , format ["%1rocket.paa", weapons_icons_path], {} ,{true}] call ace_interact_menu_fnc_createAction;
	[_x , 0 ,["ACE_MainActions" ,"WEAPONS" ] , _RocketLuncher , true] call ace_interact_menu_fnc_addActionToClass;

		// rhs_weap_m14ebrri (child)
		_R1 = ["R1" , "Maaws" , _R1_Icon , { ["maaws"] execVM format ["%1rocketLunchers.sqf", wepons_path]} ,{true}] call ace_interact_menu_fnc_createAction;
		[_x , 0 ,["ACE_MainActions" ,"WEAPONS" , "RocketL"] , _R1 , true] call ace_interact_menu_fnc_addActionToClass;


/*
_________________________________SCOPES__________________________________________________________________________________________________________________________________________________________________
*/



	// SCOPES
_scopes = ["SCOPES" , "Scopes" , format ["%1scopes.paa", weapons_icons_path], {} ,{true}] call ace_interact_menu_fnc_createAction;
[_x , 0 ,["ACE_MainActions" ] , _scopes , true] call ace_interact_menu_fnc_addActionToClass;

	_rfileScopes = ["RIFLESCOPES" , "Rifle Scopes" ,"", {} ,{true}] call ace_interact_menu_fnc_createAction;
	[_x , 0 ,["ACE_MainActions" , "SCOPES" ] , _rfileScopes , true] call ace_interact_menu_fnc_addActionToClass;

		_rhsusf_acc_ACOG_RMR_Icon = getText (configfile >> "CfgWeapons" >> "rhsusf_acc_ACOG_RMR" >> "picture");
		_rhsusf_acc_compm4_Icon = getText (configfile >> "CfgWeapons" >> "rhsusf_acc_compm4" >> "picture");
		_rhsusf_acc_g33_xps3_Icon = getText (configfile >> "CfgWeapons" >> "rhsusf_acc_g33_xps3" >> "picture");
		_rhsusf_acc_ACOG3_Icon = getText (configfile >> "CfgWeapons" >> "rhsusf_acc_ACOG3" >> "picture");
		_rhsusf_acc_eotech_552_Icon = getText (configfile >> "CfgWeapons" >> "rhsusf_acc_eotech_552" >> "picture");
		_rhsusf_acc_T1_high_Icon = getText (configfile >> "CfgWeapons" >> "rhsusf_acc_T1_high" >> "picture");

		_rhsusf_acc_ACOG_RMR = ["rhsusf_acc_ACOG_RMR" , "ACOG RMR" , _rhsusf_acc_ACOG_RMR_Icon , { ["ATTACHMENT" , "rhsusf_acc_ACOG_RMR"] execVM loadoutFunction_path} ,{true}] call ace_interact_menu_fnc_createAction;
		[_x , 0 ,["ACE_MainActions" , "SCOPES" , "RIFLESCOPES"] , _rhsusf_acc_ACOG_RMR , true] call ace_interact_menu_fnc_addActionToClass;

		_rhsusf_acc_compm4 = ["rhsusf_acc_compm4" , "compm4" , _rhsusf_acc_compm4_Icon , {  ["ATTACHMENT" , "rhsusf_acc_compm4"] execVM loadoutFunction_path} ,{true}] call ace_interact_menu_fnc_createAction;
		[_x , 0 ,["ACE_MainActions" , "SCOPES" , "RIFLESCOPES"] , _rhsusf_acc_compm4 , true] call ace_interact_menu_fnc_addActionToClass;

		_rhsusf_acc_g33_xps3 = ["rhsusf_acc_g33_xps3" , "g33 xps3" , _rhsusf_acc_g33_xps3_Icon , { ["ATTACHMENT" , "rhsusf_acc_g33_xps3"] execVM loadoutFunction_path} ,{true}] call ace_interact_menu_fnc_createAction;
		[_x , 0 ,["ACE_MainActions" , "SCOPES" , "RIFLESCOPES"] , _rhsusf_acc_g33_xps3 , true] call ace_interact_menu_fnc_addActionToClass;

		_rhsusf_acc_ACOG3 = ["rhsusf_acc_ACOG3" , "ACOG3" , _rhsusf_acc_ACOG3_Icon , {  ["ATTACHMENT" , "rhsusf_acc_ACOG3"] execVM loadoutFunction_path} ,{true}] call ace_interact_menu_fnc_createAction;
		[_x , 0 ,["ACE_MainActions" , "SCOPES" , "RIFLESCOPES"] , _rhsusf_acc_ACOG3 , true] call ace_interact_menu_fnc_addActionToClass;

		_rhsusf_acc_eotech_552 = ["rhsusf_acc_eotech_552" , "eotech 552" , _rhsusf_acc_eotech_552_Icon , {  ["ATTACHMENT" , "rhsusf_acc_eotech_552"] execVM loadoutFunction_path} ,{true}] call ace_interact_menu_fnc_createAction;
		[_x , 0 ,["ACE_MainActions" , "SCOPES" , "RIFLESCOPES"] , _rhsusf_acc_eotech_552 , true] call ace_interact_menu_fnc_addActionToClass;

		_rhsusf_acc_T1_high = ["_rhsusf_acc_T1_high" , "T1 High" , _rhsusf_acc_T1_high_Icon , { ["ATTACHMENT" , "rhsusf_acc_T1_high"] execVM loadoutFunction_path} ,{true}] call ace_interact_menu_fnc_createAction;
		[_x , 0 ,["ACE_MainActions" , "SCOPES" , "RIFLESCOPES"] , _rhsusf_acc_T1_high , true] call ace_interact_menu_fnc_addActionToClass;


	_MGScopes = ["MGSCOPES" , "MG Scopes" ,"", {} ,{true}] call ace_interact_menu_fnc_createAction;
	[_x , 0 ,["ACE_MainActions" , "SCOPES" ] , _MGScopes , true] call ace_interact_menu_fnc_addActionToClass;

		_rhsusf_acc_ELCAN_ard_Icon = getText (configfile >> "CfgWeapons" >> "rhsusf_acc_ELCAN_ard" >> "picture");

		_rhsusf_acc_ELCAN_ard = ["_rhsusf_acc_ELCAN_ard" , "ELCAN Ard" , _rhsusf_acc_ELCAN_ard_Icon , { ["ATTACHMENT" , "rhsusf_acc_ELCAN_ard"] execVM loadoutFunction_path} ,{true}] call ace_interact_menu_fnc_createAction;
		[_x , 0 ,["ACE_MainActions" , "SCOPES" , "MGSCOPES"] , _rhsusf_acc_ELCAN_ard , true] call ace_interact_menu_fnc_addActionToClass;


	_sniperScopes = ["SNIPERSCOPES" , "Sniper Scopes" ,"", {} ,{true}] call ace_interact_menu_fnc_createAction;
	[_x , 0 ,["ACE_MainActions" , "SCOPES" ] , _sniperScopes , true] call ace_interact_menu_fnc_addActionToClass;

		_rhsusf_acc_M8541_Icon = getText (configfile >> "CfgWeapons" >> "rhsusf_acc_M8541" >> "picture");
		_rhsusf_acc_LEUPOLDMK4_2_Icon = getText (configfile >> "CfgWeapons" >> "rhsusf_acc_LEUPOLDMK4_2" >> "picture");

		_rhsusf_acc_M8541 = ["_rhsusf_acc_M8541" , "M8541" , _rhsusf_acc_M8541_Icon , { ["ATTACHMENT" , "rhsusf_acc_M8541"] execVM loadoutFunction_path} ,{true}] call ace_interact_menu_fnc_createAction;
		[_x , 0 ,["ACE_MainActions" , "SCOPES" , "SNIPERSCOPES"] , _rhsusf_acc_M8541 , true] call ace_interact_menu_fnc_addActionToClass;

		_rhsusf_acc_LEUPOLDMK4_2 = ["_rhsusf_acc_LEUPOLDMK4_2" , "LEUPOLDMK" , _rhsusf_acc_LEUPOLDMK4_2_Icon , { ["ATTACHMENT" , "rhsusf_acc_LEUPOLDMK4_2"] execVM loadoutFunction_path} ,{true}] call ace_interact_menu_fnc_createAction;
		[_x , 0 ,["ACE_MainActions" , "SCOPES" , "SNIPERSCOPES"] , _rhsusf_acc_LEUPOLDMK4_2 , true] call ace_interact_menu_fnc_addActionToClass;

} forEach LoadoutBoxs;