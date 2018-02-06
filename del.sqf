
/* PART 1
tank_o_1
tank_o_1
tank_o_1
group_o_1
group_o_2

// cas4, cas5, cas6, cas1, cas2, cas3, tank_o1, lkw_o1, group_o_1, group_o_2

*/

// übergebene Einheit löschen
// einheiten übergeben mit:
// null = [einheitobjekt, art] execvm "del.sqf";
// 0 = fahrzeuge
// 1 = gruppen

_unit_del = _this select 0;
_group_or_car = _this select 1;

if (_group_or_car == 0) then {

	{deleteVehicle _x} forEach crew (vehicle _unit_del) + [(vehicle _unit_del)];

} else {

	/*_unit_del = leader this;
	{ deleteVehicle _x } forEach thislist;
	deleteGroup _unit_del;*/
	
	{ deleteVehicle _x } forEach units _unit_del;
	deleteGroup _unit_del;

};



/*{deleteVehicle _x} forEach crew (vehicle this) + [(vehicle this)];
hint "hellloooo";
*/

/*_group = leader this;
{ deleteVehicle _x } forEach thislist;
deleteGroup _group;*/

// { deleteVehicle _x } forEach units _group;
//deleteGroup _group;