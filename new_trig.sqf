playerarray = [];

{

playerarray = playerarray + [_x];

} forEach allPlayers;

randomplayer = playerarray select 0;


randomplayerpos = getPos randomplayer;


trg = createTrigger ["EmptyDetector", randomplayerpos]; // position player // [4322.1279,40.611931,2394.4009]
trg setTriggerArea [200, 200, 20, false];
trg setTriggerActivation ["ANYPLAYER", "EAST D", false];
//_trg setTriggerStatements ["this", "nul=['1',150,10,10]execVM 'rand_explo_new.sqf'; hint 'jetzt müsste es einen neuen trigger geben';","hint 'ich hab mich beendet';"];


trg setTriggerStatements ["this", "nul = ['1',150,5,10] execvm 'rand_explo_new.sqf'; ",""]; //this
//hint "trigger erstellt";
player allowdamage false




/*//////////////////////////////////


{
	systemChat format [
		"Player %1 is %2", 
		name _x, 
		["dead", "alive"] select alive _x
	];
} forEach allPlayers;


//
waitUntil {player == player};

playerarray = [];

{

playerarray = playerarray + [_x];

} forEach playableUnits;

randomplayer = playerarray select 0;


randomplayerpos = getPos randomplayer;

_wp = AS addWaypoint [position randomplayerpos, 0]

/////////////////////////////////////


if () {
}

*/