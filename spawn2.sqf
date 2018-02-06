
_yourgroup1 = createGroup east;
_yourgroup2 = createGroup east;
_yourgroup3 = createGroup east;
_yourgroup4 = createGroup east;

sleep 60;
"isc_is_squad_leader_o" createUnit [getMarkerPos "spawn_air", _yourgroup1];
"isc_is_rifleman_o" createUnit [getMarkerPos "spawn_air", _yourgroup1];
"isc_is_machinegunner_o" createUnit [getMarkerPos "spawn_air", _yourgroup1];
"isc_is_rifleman_o" createUnit [getMarkerPos "spawn_air", _yourgroup1];
"isc_is_medic_o" createUnit [getMarkerPos "spawn_air", _yourgroup1];
"isc_is_rifleman_o" createUnit [getMarkerPos "spawn_air", _yourgroup1];



"isc_is_squad_leader_o" createUnit [getMarkerPos "spawn_air", _yourgroup2];
"isc_is_rifleman_o" createUnit [getMarkerPos "spawn_air", _yourgroup2];
"isc_is_medic_o" createUnit [getMarkerPos "spawn_air", _yourgroup2];
"isc_is_machinegunner_o" createUnit [getMarkerPos "spawn_air", _yourgroup2];

sleep 480;



_wpo = _yourgroup1 addWaypoint [getMarkerPos "posi", 1];
_wpo = _yourgroup2 addWaypoint [getMarkerPos "posi", 1];


[_yourgroup1, 1] setWaypointType "MOVE";
[_yourgroup2, 1] setWaypointType "MOVE";

sleep 480;

"isc_is_squad_leader_o" createUnit [getMarkerPos "spawn_air", _yourgroup3];
"isc_is_rifleman_o" createUnit [getMarkerPos "spawn_air", _yourgroup3];
"isc_is_machinegunner_o" createUnit [getMarkerPos "spawn_air", _yourgroup3];
"isc_is_rifleman_o" createUnit [getMarkerPos "spawn_air", _yourgroup3];
"isc_is_medic_o" createUnit [getMarkerPos "spawn_air", _yourgroup3];
"isc_is_rifleman_o" createUnit [getMarkerPos "spawn_air", _yourgroup3];



"isc_is_squad_leader_o" createUnit [getMarkerPos "spawn_air", _yourgroup4];
"isc_is_rifleman_o" createUnit [getMarkerPos "spawn_air", _yourgroup4];
"isc_is_medic_o" createUnit [getMarkerPos "spawn_air", _yourgroup4];
"isc_is_machinegunner_o" createUnit [getMarkerPos "spawn_air", _yourgroup4];

sleep 60;

_wpo = _yourgroup3 addWaypoint [getMarkerPos "posi", 1];
_wpo = _yourgroup4 addWaypoint [getMarkerPos "posi", 1];


[_yourgroup3, 1] setWaypointType "MOVE";
[_yourgroup4, 1] setWaypointType "MOVE";