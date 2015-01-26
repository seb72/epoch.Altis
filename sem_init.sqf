if(isDedicated)exitWith{}; //Everything below this line is only executed on the client (player or local host)

//Wait until these variables are broadcasted to the client (usually happens before the init gets executed)
waitUntil{!isNil {SEM_removeWeaponsFromDeadAI}};
waitUntil{!isNil {SEM_removeMagazinesFromDeadAI}};
//diag_log format["#SEM DEBUG: variables received: Weapons %1 - Magazines %2", SEM_removeWeaponsFromDeadAI, SEM_removeMagazinesFromDeadAI];

fn_createMissionMarker = {	private["_create","_markerPos","_markerName","_marker"];
	_create = _this select 0;
	
	if(!_create)then[{	//delete marker
		if (getMarkerColor "MissionMarker" != "")then{	//Only delete existing Marker
			deleteMarkerLocal "MissionMarker";
		}; 
	},{	//else create marker
	_markerPos = _this select 1;
	_markerName = _this select 2;
	
	_marker = createMarkerLocal ["MissionMarker", _markerPos];
	_marker setMarkerPosLocal _markerPos;
	_marker setMarkerTypeLocal "hd_destroy";  
	_marker setMarkerTextLocal format["%1",_markerName];  
	_marker setMarkerColorLocal "ColorRed";
	_marker setMarkerDirLocal -37;
	_marker setMarkerSizeLocal [0.8,0.8];
	}];
};

fn_AIaddKilledEH = {
	if(isPlayer _this || !local _this)exitWith{systemChat "NEIN!"};

	call compile format["
		_this addEventHandler ['Fired',{
			if(_this select 2 in %1)then{
				_this select 0 addMagazines [_this select 5, 1];
			};
		}];

		_this addEventHandler ['Killed',{ private ['_unit','_z'];
			_unit = _this select 0;
			removeBackpackGlobal _unit;
			{_unit removeWeaponGlobal _x}count (%1 + ['EpochRadio0','ItemMap','ItemRadio','ItemWatch','ItemCompass','ItemGPS']);
			{if(_x in (magazines _unit))then{_unit removeMagazines _x}}count %2;
			
			_unit spawn{
				sleep 1;
				{
				_z = _x;
				if(_x in (getweaponcargo _z))then{deleteVehicle _z}count %1;
				if(_x in (getmagazinecargo _z))then{deleteVehicle _z}count %2;
				}forEach nearestObjects [(getPos _this), ['GroundWeaponHolder','WeaponHolderSimulated','WeaponHolder'], 12];
			};
		}];
	", SEM_removeWeaponsFromDeadAI, SEM_removeMagazinesFromDeadAI];
};

 /* DO NOT CALL "fn_animateAI" because the sleep commands will cause errors when used in a non-scheduled environment */
fn_animateAI = {	private["_group","_pos","_checkPos","_firstLoop","_nearPlayers","_doMove","_dir","_dist","_posX","_posY","_oldPos","_newPos","_z"];
	_group = _this select 0;
	_pos = _this select 1;
	_checkPos = _pos; _checkPos set [2,2];
	
	waitUntil{{owner _x == owner player}forEach units _group};	//Wait until the server gives You the ownership of the AI
	diag_log format["#SEM: Client taking over AI ownership at Pos %1, Distance %2", _pos, (vehicle player) distance _pos];

	{
	_x call fn_AIaddKilledEH;
	_x enableAI "AUTOTARGET";
	//_x enableAI "TARGET";
	_x enableAI "MOVE";
	_x enableAI "ANIM";
	_x enableAI "FSM";
	_x stop false;
	_x setUnitPos "Auto";
	}count units _group;
	_group setCombatMode "YELLOW";
	_group setBehaviour "COMBAT"; //"AWARE";

	//waitUntil{{alive _x}count units _group < 1 || ({owner _x != owner player}forEach units _group)};
	
	while{{alive _x}count units _group > 0 && ({owner _x == owner player}forEach units _group)}do{
		_nearPlayers = _pos nearEntities [["Epoch_Man_base_F","Epoch_Female_base_F","Helicopter","Car","Motorcycle"], 1200];	//"Epoch_Man_base_F","Epoch_Female_base_F"
		{if(alive _x && isPlayer _x)then{	_z = _x;
			if({!(lineIntersects [eyePos _x, eyePos _z, _x, _z])}count units _group > 0)then{
			_group reveal _z;
			{if((secondaryWeapon _x) == "")then{
				_x doWatch _z; _x doTarget _z;
				_x commandFire _z; _x suppressFor 10;
			}}count units _group;
			UIsleep (5+(random 10));
		}}}forEach _nearPlayers;
	UIsleep 3;
	};
	
	diag_log format["#SEM: AI ownership lost - Remaining AIs: %1", count units _group];
};

"GlobalHint" addPublicVariableEventHandler { private "_sound";
	_sound = (_this select 1) select 0;
	switch(_sound)do{
		case 0:{playSound "UAV_05"}; //Mission start
		case 1:{playSound "UAV_01"}; //Mission fail (object destroyed)
		case 2:{playSound "UAV_04"}; //Mission fail (time out)
		case 3:{playsound "UAV_03"}; //Mission success
	};
	hint parseText format["%1", (_this select 1) select 1]
};

if(!isNil "GlobalMissionMarker")then{GlobalMissionMarker call fn_createMissionMarker};
"GlobalMissionMarker" addPublicVariableEventHandler {_this select 1 call fn_createMissionMarker};

if(!isNil "takeAIownership")then{takeAIownership call fn_animateAI};
"takeAIownership" addPublicVariableEventHandler {_this select 1 spawn fn_animateAI}; //DO NOT CALL!


if(toLower worldName in ["chernarus","chernarus_summer"])then{
	([4654.62,9593.63,0] nearestObject 145259) setDamage 1;
	([4654.62,9593.63,0] nearestObject 145260) setDamage 1;
};	//Fix for something, find out ;)