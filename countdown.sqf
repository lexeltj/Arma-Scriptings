if (isServer) then {

["1. Bombe wird in 10 Minuten abgeworfen.","hint",true,true] call BIS_fnc_MP;
sleep 60;
["T - 9 Minuten","hint",true,true] call BIS_fnc_MP;
sleep 240;
["T - 5 Minuten","hint",true,true] call BIS_fnc_MP;
sleep 120;
["T - 3 Minuten","hint",true,true] call BIS_fnc_MP;
sleep 120;
["T - 1 Minuten","hint",true,true] call BIS_fnc_MP;
sleep 60;
null = ["bomb_1_1","bomb_1_2", 100, true,true] execVM "AL_bomb\bomber_bomb.sqf";
["2. Bombe wird in 5 Minuten abgeworfen.","hint",true,true] call BIS_fnc_MP;
sleep 120;
["T - 3 Minuten","hint",true,true] call BIS_fnc_MP;
sleep 120;
["T - 1 Minuten","hint",true,true] call BIS_fnc_MP;
sleep 60;
null = ["bomb_1","bomb_2", 100, true,true] execVM "AL_bomb\bomber_bomb.sqf";
};