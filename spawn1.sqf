
_mygroup1 = createGroup west;
_mygroup2 = createGroup west;
_mygroup3 = createGroup west;
_mygroup4 = createGroup west;
_mygroup5 = createGroup west;

"rhsusf_army_ocp_squadleader" createUnit [getMarkerPos "spawn1", _mygroup1];
"rhsusf_army_ocp_autorifleman" createUnit [getMarkerPos "spawn1", _mygroup1];
"rhsusf_army_ocp_grenadier" createUnit [getMarkerPos "spawn1", _mygroup1];
"rhsusf_army_ocp_riflemanat" createUnit [getMarkerPos "spawn1", _mygroup1];
"rhsusf_army_ocp_rifleman" createUnit [getMarkerPos "spawn1", _mygroup1];
"rhsusf_army_ocp_rifleman" createUnit [getMarkerPos "spawn1", _mygroup1];

sleep 5;

"rhsusf_army_ocp_squadleader" createUnit [getMarkerPos "spawn2", _mygroup2];
"rhsusf_army_ocp_autorifleman" createUnit [getMarkerPos "spawn2", _mygroup2];
"rhsusf_army_ocp_grenadier" createUnit [getMarkerPos "spawn2", _mygroup2];
"rhsusf_army_ocp_riflemanat" createUnit [getMarkerPos "spawn2", _mygroup2];
"rhsusf_army_ocp_rifleman" createUnit [getMarkerPos "spawn2", _mygroup2];
"rhsusf_army_ocp_rifleman" createUnit [getMarkerPos "spawn2", _mygroup2];

sleep 5;

"rhsusf_army_ocp_squadleader" createUnit [getMarkerPos "spawn3", _mygroup3];
"rhsusf_army_ocp_autorifleman" createUnit [getMarkerPos "spawn3", _mygroup3];
"rhsusf_army_ocp_grenadier" createUnit [getMarkerPos "spawn3", _mygroup3];
"rhsusf_army_ocp_riflemanat" createUnit [getMarkerPos "spawn3", _mygroup3];
"rhsusf_army_ocp_rifleman" createUnit [getMarkerPos "spawn3", _mygroup3];
"rhsusf_army_ocp_rifleman" createUnit [getMarkerPos "spawn3", _mygroup3];

_wp = _mygroup1 addWaypoint [getMarkerPos "usw1", 1];
_wp = _mygroup2 addWaypoint [getMarkerPos "usw1", 1];
_wp = _mygroup3 addWaypoint [getMarkerPos "usw1", 1];


[_mygroup1, 1] setWaypointType "MOVE";
[_mygroup2, 1] setWaypointType "MOVE";
[_mygroup3, 1] setWaypointType "MOVE";


sleep 480;
//480
_pos_spawn_3 = getMarkerPos "spawn1";
_vehil_3 = [_pos_spawn_3, 180, "RHS_M2A2", WEST] call bis_fnc_spawnvehicle;
//_vehil_3 move [getMarkerPos "usw2",1];

_group_vehil_3 = _vehil_3 select 2;
_wp = _group_vehil_3 addWaypoint [getMarkerPos "usw2", 1];
_wp setWaypointBehaviour "COMBAT";
_wp setWaypointCombatMode "RED";
_wp setWaypointCompletionRadius 0;
_wp setWaypointFormation "WEDGE";
_wp setWaypointSpeed "FULL";
_wp setwaypointType "MOVE";

// -----

_pos_spawn_4 = getMarkerPos "spawn2";
_vehil_4 = [_pos_spawn_4, 180, "rhsusf_M1220_M153_M2_usarmy_d", WEST] call bis_fnc_spawnvehicle;
//_vehil_3 move [getMarkerPos "usw2",1];

_group_vehil_4 = _vehil_4 select 2;
_wp4 = _group_vehil_4 addWaypoint [getMarkerPos "usw3", 1];
_wp4 setWaypointBehaviour "COMBAT";
_wp4 setWaypointCombatMode "RED";
_wp4 setWaypointCompletionRadius 0;
_wp4 setWaypointFormation "WEDGE";
_wp4 setWaypointSpeed "FULL";
_wp4 setwaypointType "MOVE";


//_vehil3 = "RHS_M2A2" createVehicle getMarkerPos "spawn1";
//_vehil2 = "rhsusf_M1220_M153_M2_usarmy_d" createVehicle getMarkerPos "spawn2";
//_drv1 = "rhsusf_army_ocp_squadleader" createUnit [getMarkerPos "spawn1", _mygroup4] ;
//_gune1 = "rhsusf_army_ocp_squadleader" createUnit [getMarkerPos "spawn1", _mygroup4];
//_drv1 moveInDriver _vehil3;
//_gune1 moveInGunner _vehil3;


//_wp2 = _vehil_3 addWaypoint [getMarkerPos "usw2", 1];
//_wp3 = _vehil2 addWaypoint [getMarkerPos "usw3", 1];
//[_vehil_3, 1] setWaypointType "MOVE";
//[_mygroup5, 1] setWaypointType "MOVE";