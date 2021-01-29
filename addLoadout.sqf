_unit = player;

loadout = _this select 0;

if (loadout isEqualTo "ATTACHMENT") exitwith {
	_attachment2 = _this select 1;
	_unit addPrimaryWeaponItem _attachment2;
};

_weapons = loadout select 0; // all weapons
	_weapon = _weapons select 0; // primary weapon
		_weaponName = _weapon select 0; // primary weapon Name
		_magName = _weapon select 1; // primary weapon mags

		_IsSecondryWep =  _weapon select 3; // is secondry

_attachment = loadout select 1;

_itemTobackpack = loadout select 2;
_currentWeapon = currentMuzzle _unit;
_items = primaryWeaponItems _unit ;


if (!_IsSecondryWep) then {
	_currentMag= currentMagazine _unit;
	numberOfAllMags = count (magazines _unit);
	for "_i" from 1 to numberOfAllMags do {
		_unit removeMagazine _currentMag;
		_unit removeMagazine _magName;
		 handgunMagazine _unit;
	};
};


{
	_unit addWeapon (_x select 0);
	_unit addMagazines [(_x select 1 ), (_x select 2)];

} forEach _weapons ;

{
	_unit removeItemFromBackpack _x ;

} forEach _itemTobackpack ;

{
	_unit addItemToBackpack _x ;

} forEach _itemTobackpack ;

// handgun
_unit addWeapon "rhsusf_weap_m9";
for "_i" from 1 to 3 do {_unit addItemToVest "rhsusf_mag_15Rnd_9x19_JHP";};
_unit addHandgunItem "rhsusf_mag_15Rnd_9x19_JHP";
{ _unit addPrimaryWeaponItem _x } forEach _attachment ;
_unit addPrimaryWeaponItem _magName;

{
	_unit addPrimaryWeaponItem _x;
} forEach _items;



