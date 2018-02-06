_spawn_heli = getMarkerPos "spawn_apache";
_patrol_heli = getposatl player;


_mygroup_heli = createGroup west;

_vehil_heli = [_spawn_heli, 180, "RHS_AH64D", _mygroup_heli] call bis_fnc_spawnvehicle;


_group_heli = _vehil_heli select 2;
//_group_heli flyInHeight 40;
// test
_wp = _group_heli addWaypoint [_patrol_heli, 550];
_wp setWaypointStatements ["true", "_this flyInHeight 40;"];
//_wp setWaypointScript "del.sqf";
_wp setWaypointBehaviour "COMBAT";
_wp setWaypointCombatMode "RED";
_wp setWaypointCompletionRadius 0;
_wp setWaypointFormation "WEDGE";
_wp setWaypointSpeed "LIMITED";
_wp setwaypointType "MOVE"; // "MOVE"
// Test ende



_wp = _group_heli addWaypoint [_patrol_heli, 550];
//_wp setWaypointScript "del.sqf";
_wp setWaypointBehaviour "COMBAT";
_wp setWaypointCombatMode "RED";
_wp setWaypointCompletionRadius 0;
_wp setWaypointFormation "WEDGE";
_wp setWaypointSpeed "LIMITED";
_wp setwaypointType "MOVE"; // "MOVE"
//_wp setWaypointTimeout [2, 5, 10];

// script wp

//



// erstmal

_wp = _group_heli addWaypoint [_spawn_apache, 550];

_wp setWaypointStatements ["true", "{deleteVehicle _x} forEach crew (vehicle this) + [(vehicle this)];"];
_wp setWaypointBehaviour "COMBAT";
_wp setWaypointCombatMode "RED";
_wp setWaypointCompletionRadius 0;
_wp setWaypointFormation "WEDGE";
_wp setWaypointSpeed "LIMITED";
_wp setwaypointType "CYCLE";
_wp setWaypointTimeout [2, 5, 10];

sleep 6;

//{deleteVehicle _x} forEach crew _vehil_heli + [_vehil_heli];