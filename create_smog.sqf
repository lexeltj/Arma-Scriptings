
if (alive firewatch) then {
firepad1 = createVehicle ["Land_HelipadEmpty_F", getMarkerPos "fire1", [], 0, "NONE"];
firepad2 = createVehicle ["Land_HelipadEmpty_F", getMarkerPos "fire2", [], 0, "NONE"];
firepad3 = createVehicle ["Land_HelipadEmpty_F", getMarkerPos "fire3", [], 0, "NONE"];
firepad4 = createVehicle ["Land_HelipadEmpty_F", getMarkerPos "fire4", [], 0, "NONE"];

firepad1 = [firepad1,600,10,0,false,false,"small"] spawn compile preprocessFile "ALfire\fire.sqf";
firepad2 = [firepad2,600,5,0,false,false,"small"] spawn compile preprocessFile "ALfire\fire.sqf";
firepad3 = [firepad3,600,5,0,false,false,"small"] spawn compile preprocessFile "ALfire\fire.sqf";
firepad4 = [firepad4,600,5,0,false,false,"small"] spawn compile preprocessFile "ALfire\fire.sqf";


sleep 600;
//deleten
//deletevehicle _firepad1;
null = [] execvm "create_smog.sqf";
};
