//////////////////////////////////////////////////////////////////
// Function file for Armed Assault
// Created by: TODO: Author Name
//////////////////////////////////////////////////////////////////
// Use the following to activate the script.
// nul=[center,size,howmany,delay] execVM "RndExpl.sqf"
// or use 
// nul=[this,200,20,5]execVM "RndExpl.sqf" placed in a game logic Init for instant result.
// ///////////////////////////////////////////////////////////////
// 1. Center place an object ot gamelogic where you want the explosions.
// 2. Choose the size of the area in metere.
// 3. Select how many explosions you require
// 4. Select the maximum delay between explosions in seconds. 
// 5. minimum delay is 0.5 secs and can be changed in the script.
// 6. If the two // are removed from the "Grenadebase" line a more visible marke is left on the ground.

if((alive spot1) or (alive spot2)) then {
//hint "ich werde ausgefuehrt";
_pos    = _this select 0;

/*if (_pos == "1") then {deleteVehicle trg

};*/

_area   = _this select 1;
_rounds = _this select 2;
_del    = _this select 3;

_pos_player_akt = getPosATL player;
_pos_player_area = 50;
_pos_player_height = 200;

_height = 0;// increase this if you want the items to fall from the sky.
_ammo = "R_80mm_HE";// Ammo can be changed for larger effects. Bo_GBU12_LGB grenade Sh_120mm_HE
// F_20mm_White = White Flares vorher
_light = "F_20mm_White";

// Beleuchtung
 for [{_i = 0},{_i < 3},{_i = _i + 1}] do
{
 _newpos = _pos_player_akt;
  _posX = _newpos select 0;
   _posY = _newpos select 1;
   //_bomb = _light createVehicle[(_posX + random _pos_player_area)-_pos_player_area/2, (_posY + random _pos_player_area)-_pos_player_area/2,_pos_player_height];
   
  // _bomb = _light createVehicle[(_posX + random _pos_player_area)-_pos_player_area/2, (_posY + random _pos_player_area)-_pos_player_area/2,_pos_player_height];
   _bomb = createVehicle [_light, [(_posX + random _pos_player_area)-_pos_player_area/2, (_posY + random _pos_player_area)-_pos_player_area/2,_pos_player_height], [], 0, "FLY"];
   _bomb setVelocity [0,0,-10];
   
 // _bomb = "GrenadeBase" createVehicle [(getpos _bomb select 0),(getpos _bomb select 1),-10];
sleep (random _del)+0.5;// minimum delay 0.5, adjust for best results.
};
sleep 8;
//nul=["posi",300,20,20]execVM "rand_explo.sqf";



// Explosionen
 for [{_i = 0},{_i < _rounds},{_i = _i + 1}] do
{
 _newpos = _pos_player_akt; //getMarkerPos "posi";
  _posX = _newpos select 0;
   _posY = _newpos select 1;
   _bomb = _ammo createVehicle[(_posX + random _area)-_area/2, (_posY + random _area)-_area/2,_height];
  _bomb = "GrenadeBase" createVehicle [(getpos _bomb select 0),(getpos _bomb select 1),-10];
sleep (random _del)+0.5;// minimum delay 0.5, adjust for best results.
};
sleep 3;
//nul=["posi",300,20,20]execVM "rand_explo.sqf";
} else {
//hint "ich werde nicht mehr ausgefuehrt";
};


// erstelle einen neuen trifgger

/*
_trg = createTrigger ["EmptyDetector", [4322.1279,40.611931,2394.4009]];
_trg setTriggerArea [250, 250, 20, false];
_trg setTriggerActivation ["ANYPLAYER", "EAST D", true];
//_trg setTriggerStatements ["this", "nul=['1',150,10,10]execVM 'rand_explo_new.sqf'; hint 'jetzt müsste es einen neuen trigger geben';","hint 'ich hab mich beendet';"];


_trg setTriggerStatements ["this", "hint 'gefunden';","hint 'ich hab mich beendet';"];
hint "trigger erstellt";*/
deleteVehicle trg;
sleep 60;
nul = [] execvm 'new_trig.sqf';