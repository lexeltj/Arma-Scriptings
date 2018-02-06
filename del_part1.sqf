
// hier löschen wir alle einheiten aus dem ersten teil

[group_o_1, 1] execvm "del.sqf";
[group_o_2, 1] execvm "del.sqf";

[cas1, 0] execvm "del.sqf";
[cas2, 0] execvm "del.sqf";
[cas3, 0] execvm "del.sqf";
[cas4, 0] execvm "del.sqf";
[cas5, 0] execvm "del.sqf";
[cas6, 0] execvm "del.sqf";
[tank_o1, 0] execvm "del.sqf";
[lkw_o1, 0] execvm "del.sqf";

[_mygroup1, 0] execvm "del.sqf";
[_mygroup2, 0] execvm "del.sqf";

/*

while {true} do {
   // code goes here
_start = diag_tickTime;
{ deleteVehicle _x; } forEach allDead;
{ deleteVehicle _x; } forEach nearestObjects [getpos player,["WeaponHolder","GroundWeaponHolder"],14000];
hint format ["Server cleanup took %1 seconds",diag_tickTime - _start];  


   // delay goes here
   sleep 30;
};

*/