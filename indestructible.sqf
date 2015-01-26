//Indestructible Bases by [GZA] David zombieapo.eu
sleep 80;
while {true} do {
	_indestructible = (allMissionObjects "Constructions_static_F") + (allMissionObjects "PlotPole_EPOCH");
    {
		if (!((_x isKindof "CinderWallGarage_EPOCH") or (_x isKindof "WoodLargeWallDoorL_EPOCH") or (_x isKindof "WoodLargeWallDoor_EPOCH"))) then {
		_x addEventHandler ["HandleDamage", {false}];
		_x enableSimulation false;
		};
	} count _indestructible;
    sleep 300; // run every 5min
};