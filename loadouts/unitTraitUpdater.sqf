_unit = player;
_unit setUnitTrait ["NONE" , false , true],;
_unit setUnitTrait ["HAT" , false , true],;
_unit setUnitTrait ["HMG" , false , true],;
_unit setUnitTrait ["LAT" , false , true],;
_unit setUnitTrait ["LMG" , false , true],;
_unit setUnitTrait ["MARKSMAN" , false , true],;
_unit setUnitTrait ["PILOT" , false , true],;
_unit setUnitTrait ["RIFLEMAN" , false , true],;
_unit setUnitTrait ["SQUADLEADER" , false , true],;
_unit setUnitTrait ["Medic", false],;
_unit setUnitTrait ["Engineer", false],;
_unit setUnitTrait ["ExplosiveSpecialist", false],;
_unit setUnitTrait ["UavHacker", false],;


_unitRole = _this select 0;
switch (_unitRole) do {
    case "NONE": { _unit setUnitTrait ["NONE" , true , true],;};
    case "HAT": { _unit setUnitTrait ["HAT" , true , true],;};
    case "HMG": { _unit setUnitTrait ["HMG" , true , true],;};
    case "LAT": { _unit setUnitTrait ["LAT" , true , true],;};
    case "LMG": { _unit setUnitTrait ["LMG" , true , true],;};
    case "MARKSMAN": { _unit setUnitTrait ["MARKSMAN" , true , true],;};
    case "PILOT": { _unit setUnitTrait ["PILOT" , true , true],;};
    case "RIFLEMAN": { _unit setUnitTrait ["RIFLEMAN" , true , true],;};
    case "SQUADLEADER": { _unit setUnitTrait ["SQUADLEADER" , true , true],;};
    case "Medic": { _unit setUnitTrait ["Medic", true],;};
    case "Engineer": { _unit setUnitTrait ["Engineer", true],;};
    case "ExplosiveSpecialist": {_unit setUnitTrait ["ExplosiveSpecialist", true],;};
    case "UavHacker": { _unit setUnitTrait ["UavHacker", true],;};
    default { hint "default" };
};