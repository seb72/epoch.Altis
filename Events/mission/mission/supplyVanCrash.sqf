/*
	Based Of drsubo Mission Scripts
	File: supplyVanCrash.sqf
	Author: Cammygames, drsubo
*/
["Mission: Supply Van Crash","BIS_fnc_log"] call BIS_fnc_MP;



_n1 = floor(random 6);				
if (_n1 == 0) then
	{
	_pos = [4223.3428,13895.15];
	_marker = createMarker ["MarkerS",_pos];  
	_marker setMarkerType "mil_objective";  
	"MarkerS" setMarkerText "Accident de Fourgon";  
	"MarkerS" setMarkerColor "ColorRed";
	sleep 5;
	[_pos] execVM "Events\mission\scripts\ai.sqf";
	_ogjstr = "<t align='center' size='2.0' color='#ff0000'>Mission<br/>Supply Van Crash</t><br/><t size='1.25' color='#ffff00'>______________<br/><br/>
	Our radar has picked up a supply van crash!<br/>
	You have our permission to confiscate any property you find as payment for eliminating the threat!";

	GlobalHint = _ogjstr;
	publicVariable "GlobalHint";

	_centerpos = getmarkerpos "MarkerS";
	_box1 = createVehicle ["box_ind_ammoveh_f", _pos, [], 0, "NONE"];
	diag_log ["##Spawn_Loot##"];

	_n2 = floor(random 6);
					
	if (_n2 == 0) then
		{
			_box1 = createVehicle ["box_ind_ammoveh_f",_pos,[],10,"CAN_COLLIDE"];
			clearWeaponCargoGlobal _box1;

			clearMagazineCargoGlobal _box1;
			_box1 addWeaponCargoGlobal ["LMG_Zafir_F", 1];
			_box1 addMagazineCargoGlobal ["150Rnd_762x51_Box", 2];
			_box1 additemcargoGlobal ["NVG_EPOCH", 1];
			_box1 additemcargoGlobal ["Rangefinder", 1];
			_box1 additemcargoGlobal ["FirstAidKit", 3];
			_box1 additemcargoGlobal ["optic_Arco", 1];
			_box1 additemcargoGlobal ["ItemKiloHemp", 2];
			_box1 additemcargoGlobal ["ItemRuby", 1];
			_box1 additemcargoGlobal ["Pelt_EPOCH", 3];
			_box1 additemcargoGlobal ["meatballs_epoch", 2];
			_box1 additemcargoGlobal ["HeatPack", 3];
			_box1 additemcargoGlobal ["ItemSodaOrangeSherbet", 2];
			_box1 additemcargoGlobal ["optic_ACO_grn", 1];
			_box1 additemcargoGlobal ["U_O_GhillieSuit", 1];
			_box1 addbackpackcargoGlobal ["B_Carryall_cbr", 1];
		};   
					
	if (_n2 == 1) then
		{
			clearWeaponCargoGlobal _box1;

			clearMagazineCargoGlobal _box1;
			_box1 addWeaponCargoGlobal ["hgun_P07_F", 2];
			_box1 addWeaponCargoGlobal ["arifle_MXC_Black_F", 1];
			_box1 addWeaponCargoGlobal ["arifle_Katiba_ACO_F", 2];
			_box1 addMagazineCargoGlobal ["16Rnd_9x21_Mag", 7];
			_box1 addMagazineCargoGlobal ["30Rnd_65x39_caseless_green_mag_Tracer", 6];
			_box1 additemcargoGlobal ["ItemGPS", 2];
			_box1 additemcargoGlobal ["Binocular", 2];
			_box1 additemcargoGlobal ["FirstAidKit", 4];
			_box1 additemcargoGlobal ["WhiskeyNoodle", 3];
			_box1 additemcargoGlobal ["muzzle_snds_H", 1];
			_box1 additemcargoGlobal ["ItemKiloHemp", 2];
			_box1 additemcargoGlobal ["scam_epoch", 2];
			_box1 additemcargoGlobal ["ColdPack", 1];
			_box1 additemcargoGlobal ["muzzle_snds_L", 1];
			_box1 additemcargoGlobal ["VehicleRepair", 1];
			_box1 additemcargoGlobal ["U_O_CombatUniform_ocamo", 1];
			_box1 addbackpackcargoGlobal ["B_Carryall_cbr", 1];
		}; 
		
	if (_n2 == 2) then
		{
			clearWeaponCargoGlobal _box1;

			clearMagazineCargoGlobal _box1;
			_box1 addWeaponCargoGlobal ["srifle_GM6_SOS_F", 1];
			_box1 addWeaponCargoGlobal ["srifle_DMR_01_F", 1];
			_box1 addWeaponCargoGlobal ["srifle_EBR_MRCO_pointer_F", 1];
			_box1 addMagazineCargoGlobal ["5Rnd_127x108_Mag", 4];
			_box1 addMagazineCargoGlobal ["10Rnd_762x51_Mag", 4];
			_box1 addMagazineCargoGlobal ["20Rnd_762x51_Mag", 5];
			_box1 additemcargoGlobal ["ItemCompass", 1];
			_box1 additemcargoGlobal ["Rangefinder", 2];
			_box1 additemcargoGlobal ["FirstAidKit", 1];
			_box1 additemcargoGlobal ["muzzle_snds_B", 1];
			_box1 additemcargoGlobal ["ItemGoldBar", 1];
			_box1 additemcargoGlobal ["Pelt_EPOCH", 2];
			_box1 additemcargoGlobal ["ChainSaw", 1];
			_box1 additemcargoGlobal ["ItemMixOil", 1];
			_box1 additemcargoGlobal ["muzzle_snds_B", 1];
			_box1 additemcargoGlobal ["optic_Nightstalker", 1];
			_box1 additemcargoGlobal ["ItemGPS", 1];
			_box1 addbackpackcargoGlobal ["B_Carryall_cbr", 1];
		}; 
		
	if (_n2 == 3) then
		{
			clearWeaponCargoGlobal _box1;

			clearMagazineCargoGlobal _box1;
			_box1 addWeaponCargoGlobal ["hgun_P07_F", 1];
			_box1 addWeaponCargoGlobal ["Rollins_F", 1];
			_box1 addMagazineCargoGlobal ["16Rnd_9x21_Mag", 4];
			_box1 addMagazineCargoGlobal ["5Rnd_rollins_mag", 4];
			_box1 additemcargoGlobal ["ItemCompass", 1];
			_box1 additemcargoGlobal ["Rangefinder", 2];
			_box1 additemcargoGlobal ["FirstAidKit", 1];
			_box1 additemcargoGlobal ["muzzle_snds_B", 1];
			_box1 additemcargoGlobal ["Pelt_EPOCH", 2];
			_box1 additemcargoGlobal ["ChainSaw", 1];
			_box1 additemcargoGlobal ["ItemMixOil", 2];
			_box1 additemcargoGlobal ["jerrycan_epoch", 2];
			_box1 addbackpackcargoGlobal ["B_Carryall_cbr", 1];
		}; 
		
	if (_n2 == 4) then
		{
			clearWeaponCargoGlobal _box1;

			clearMagazineCargoGlobal _box1;
			_box1 addWeaponCargoGlobal ["LMG_Zafir_F", 1];
			_box1 addMagazineCargoGlobal ["150Rnd_762x51_Box", 4];
			_box1 additemcargoGlobal ["ItemCompass", 1];
			_box1 additemcargoGlobal ["VehicleRepair", 1];
			_box1 additemcargoGlobal ["FirstAidKit", 1];
			_box1 additemcargoGlobal ["sweetcorn_epoch", 2];
			_box1 additemcargoGlobal ["ItemSodaRbull", 1];
			_box1 additemcargoGlobal ["Pelt_EPOCH", 2];
			_box1 additemcargoGlobal ["ItemKiloHemp", 5];
			_box1 additemcargoGlobal ["Towelette", 4];
			_box1 addbackpackcargoGlobal ["B_Carryall_cbr", 1];

		}; 
		
	if (_n2 == 5) then
		{
			clearWeaponCargoGlobal _box1;

			clearMagazineCargoGlobal _box1;
			_box1 addWeaponCargoGlobal ["srifle_GM6_SOS_F", 1];
			_box1 addWeaponCargoGlobal ["MultiGun", 1];
			_box1 addMagazineCargoGlobal ["5Rnd_127x108_Mag", 4];
			_box1 addMagazineCargoGlobal ["EnergyPack", 4];
			_box1 additemcargoGlobal ["ItemCompass", 1];
			_box1 additemcargoGlobal ["FirstAidKit", 1];
			_box1 additemcargoGlobal ["Repair_EPOCH", 1];
			_box1 additemcargoGlobal ["Defib_EPOCH", 1];
			_box1 additemcargoGlobal ["Heal_EPOCH", 2];
			_box1 additemcargoGlobal ["jerrycan_epoch", 2];
			_box1 addbackpackcargoGlobal ["B_Carryall_cbr", 1];
		}; 

	if (_n2 == 6) then
		{
			clearWeaponCargoGlobal _box1;

			clearMagazineCargoGlobal _box1;
			_box1 addWeaponCargoGlobal ["srifle_GM6_SOS_F", 1];
			_box1 addMagazineCargoGlobal ["5Rnd_127x108_Mag", 4];
			_box1 additemcargoGlobal ["ItemCompass", 1];
			_box1 additemcargoGlobal ["FirstAidKit", 1];
			_box1 additemcargoGlobal ["CinderBlocks", 16];
			_box1 additemcargoGlobal ["ChainSaw", 1];
			_box1 additemcargoGlobal ["ItemMixOil", 2];
			_box1 additemcargoGlobal ["jerrycan_epoch", 2];
			_box1 additemcargoGlobal ["EnergyPack", 4];
			_box1 additemcargoGlobal ["MortarBucket", 6];
			_box1 additemcargoGlobal ["ItemCorrugated", 6];
			_box1 addbackpackcargoGlobal ["B_Carryall_cbr", 1];
		}; 

	_wreck = createVehicle ["Land_Wreck_Van_F",_pos,[], 0, "NONE"];
	_wreck1 = createVehicle ["Land_Wreck_Ural_F",_pos,[], 0, "NONE"];

	sleep 2000;
	deleteMarker "MarkerS"; 
	deleteVehicle  _wreck; 
	deleteVehicle  _wreck1;
	deleteVehicle  _box1;
	};
if (_n1 == 1) then
	{
	_pos = [6781.8521,15804.714];
	_marker = createMarker ["MarkerS",_pos];  
	_marker setMarkerType "mil_objective";  
	"MarkerS" setMarkerText "Accident de Fourgon";  
	"MarkerS" setMarkerColor "ColorRed";
	sleep 5;
	[_pos] execVM "Events\mission\scripts\ai.sqf";
	_ogjstr = "<t align='center' size='2.0' color='#ff0000'>Mission<br/>Supply Van Crash</t><br/><t size='1.25' color='#ffff00'>______________<br/><br/>
	Our radar has picked up a supply van crash!<br/>
	You have our permission to confiscate any property you find as payment for eliminating the threat!";

	GlobalHint = _ogjstr;
	publicVariable "GlobalHint";

	_centerpos = getmarkerpos "MarkerS";
	_box1 = createVehicle ["box_ind_ammoveh_f", _pos, [], 0, "NONE"];
	diag_log ["##Spawn_Loot##"];

	_n2 = floor(random 6);
					
	if (_n2 == 0) then
		{
			_box1 = createVehicle ["box_ind_ammoveh_f",_pos,[],10,"CAN_COLLIDE"];
			clearWeaponCargoGlobal _box1;

			clearMagazineCargoGlobal _box1;
			_box1 addWeaponCargoGlobal ["LMG_Zafir_F", 1];
			_box1 addMagazineCargoGlobal ["150Rnd_762x51_Box", 2];
			_box1 additemcargoGlobal ["NVG_EPOCH", 1];
			_box1 additemcargoGlobal ["Rangefinder", 1];
			_box1 additemcargoGlobal ["FirstAidKit", 3];
			_box1 additemcargoGlobal ["optic_Arco", 1];
			_box1 additemcargoGlobal ["ItemKiloHemp", 2];
			_box1 additemcargoGlobal ["ItemRuby", 1];
			_box1 additemcargoGlobal ["Pelt_EPOCH", 3];
			_box1 additemcargoGlobal ["meatballs_epoch", 2];
			_box1 additemcargoGlobal ["HeatPack", 3];
			_box1 additemcargoGlobal ["ItemSodaOrangeSherbet", 2];
			_box1 additemcargoGlobal ["optic_ACO_grn", 1];
			_box1 additemcargoGlobal ["U_O_GhillieSuit", 1];
			_box1 addbackpackcargoGlobal ["B_Carryall_cbr", 1];
		};   
					
	if (_n2 == 1) then
		{
			clearWeaponCargoGlobal _box1;

			clearMagazineCargoGlobal _box1;
			_box1 addWeaponCargoGlobal ["hgun_P07_F", 2];
			_box1 addWeaponCargoGlobal ["arifle_MXC_Black_F", 1];
			_box1 addWeaponCargoGlobal ["arifle_Katiba_ACO_F", 2];
			_box1 addMagazineCargoGlobal ["16Rnd_9x21_Mag", 7];
			_box1 addMagazineCargoGlobal ["30Rnd_65x39_caseless_green_mag_Tracer", 6];
			_box1 additemcargoGlobal ["ItemGPS", 2];
			_box1 additemcargoGlobal ["Binocular", 2];
			_box1 additemcargoGlobal ["FirstAidKit", 4];
			_box1 additemcargoGlobal ["WhiskeyNoodle", 3];
			_box1 additemcargoGlobal ["muzzle_snds_H", 1];
			_box1 additemcargoGlobal ["ItemKiloHemp", 2];
			_box1 additemcargoGlobal ["scam_epoch", 2];
			_box1 additemcargoGlobal ["ColdPack", 1];
			_box1 additemcargoGlobal ["muzzle_snds_L", 1];
			_box1 additemcargoGlobal ["VehicleRepair", 1];
			_box1 additemcargoGlobal ["U_O_CombatUniform_ocamo", 1];
			_box1 addbackpackcargoGlobal ["B_Carryall_cbr", 1];
		}; 
		
	if (_n2 == 2) then
		{
			clearWeaponCargoGlobal _box1;

			clearMagazineCargoGlobal _box1;
			_box1 addWeaponCargoGlobal ["srifle_GM6_SOS_F", 1];
			_box1 addWeaponCargoGlobal ["srifle_DMR_01_F", 1];
			_box1 addWeaponCargoGlobal ["srifle_EBR_MRCO_pointer_F", 1];
			_box1 addMagazineCargoGlobal ["5Rnd_127x108_Mag", 4];
			_box1 addMagazineCargoGlobal ["10Rnd_762x51_Mag", 4];
			_box1 addMagazineCargoGlobal ["20Rnd_762x51_Mag", 5];
			_box1 additemcargoGlobal ["ItemCompass", 1];
			_box1 additemcargoGlobal ["Rangefinder", 2];
			_box1 additemcargoGlobal ["FirstAidKit", 1];
			_box1 additemcargoGlobal ["muzzle_snds_B", 1];
			_box1 additemcargoGlobal ["ItemGoldBar", 1];
			_box1 additemcargoGlobal ["Pelt_EPOCH", 2];
			_box1 additemcargoGlobal ["ChainSaw", 1];
			_box1 additemcargoGlobal ["ItemMixOil", 1];
			_box1 additemcargoGlobal ["muzzle_snds_B", 1];
			_box1 additemcargoGlobal ["optic_Nightstalker", 1];
			_box1 additemcargoGlobal ["ItemGPS", 1];
			_box1 addbackpackcargoGlobal ["B_Carryall_cbr", 1];
		}; 
		
	if (_n2 == 3) then
		{
			clearWeaponCargoGlobal _box1;

			clearMagazineCargoGlobal _box1;
			_box1 addWeaponCargoGlobal ["hgun_P07_F", 1];
			_box1 addWeaponCargoGlobal ["Rollins_F", 1];
			_box1 addMagazineCargoGlobal ["16Rnd_9x21_Mag", 4];
			_box1 addMagazineCargoGlobal ["5Rnd_rollins_mag", 4];
			_box1 additemcargoGlobal ["ItemCompass", 1];
			_box1 additemcargoGlobal ["Rangefinder", 2];
			_box1 additemcargoGlobal ["FirstAidKit", 1];
			_box1 additemcargoGlobal ["muzzle_snds_B", 1];
			_box1 additemcargoGlobal ["Pelt_EPOCH", 2];
			_box1 additemcargoGlobal ["ChainSaw", 1];
			_box1 additemcargoGlobal ["ItemMixOil", 2];
			_box1 additemcargoGlobal ["jerrycan_epoch", 2];
			_box1 addbackpackcargoGlobal ["B_Carryall_cbr", 1];
		}; 
		
	if (_n2 == 4) then
		{
			clearWeaponCargoGlobal _box1;

			clearMagazineCargoGlobal _box1;
			_box1 addWeaponCargoGlobal ["LMG_Zafir_F", 1];
			_box1 addMagazineCargoGlobal ["150Rnd_762x51_Box", 4];
			_box1 additemcargoGlobal ["ItemCompass", 1];
			_box1 additemcargoGlobal ["VehicleRepair", 1];
			_box1 additemcargoGlobal ["FirstAidKit", 1];
			_box1 additemcargoGlobal ["sweetcorn_epoch", 2];
			_box1 additemcargoGlobal ["ItemSodaRbull", 1];
			_box1 additemcargoGlobal ["Pelt_EPOCH", 2];
			_box1 additemcargoGlobal ["ItemKiloHemp", 5];
			_box1 additemcargoGlobal ["Towelette", 4];
			_box1 addbackpackcargoGlobal ["B_Carryall_cbr", 1];

		}; 
		
	if (_n2 == 5) then
		{
			clearWeaponCargoGlobal _box1;

			clearMagazineCargoGlobal _box1;
			_box1 addWeaponCargoGlobal ["srifle_GM6_SOS_F", 1];
			_box1 addWeaponCargoGlobal ["MultiGun", 1];
			_box1 addMagazineCargoGlobal ["5Rnd_127x108_Mag", 4];
			_box1 addMagazineCargoGlobal ["EnergyPack", 4];
			_box1 additemcargoGlobal ["ItemCompass", 1];
			_box1 additemcargoGlobal ["FirstAidKit", 1];
			_box1 additemcargoGlobal ["Repair_EPOCH", 1];
			_box1 additemcargoGlobal ["Defib_EPOCH", 1];
			_box1 additemcargoGlobal ["Heal_EPOCH", 2];
			_box1 additemcargoGlobal ["jerrycan_epoch", 2];
			_box1 addbackpackcargoGlobal ["B_Carryall_cbr", 1];
		}; 

	if (_n2 == 6) then
		{
			clearWeaponCargoGlobal _box1;

			clearMagazineCargoGlobal _box1;
			_box1 addWeaponCargoGlobal ["srifle_GM6_SOS_F", 1];
			_box1 addMagazineCargoGlobal ["5Rnd_127x108_Mag", 4];
			_box1 additemcargoGlobal ["ItemCompass", 1];
			_box1 additemcargoGlobal ["FirstAidKit", 1];
			_box1 additemcargoGlobal ["CinderBlocks", 16];
			_box1 additemcargoGlobal ["ChainSaw", 1];
			_box1 additemcargoGlobal ["ItemMixOil", 2];
			_box1 additemcargoGlobal ["jerrycan_epoch", 2];
			_box1 additemcargoGlobal ["EnergyPack", 4];
			_box1 additemcargoGlobal ["MortarBucket", 6];
			_box1 additemcargoGlobal ["ItemCorrugated", 6];
			_box1 addbackpackcargoGlobal ["B_Carryall_cbr", 1];
		}; 

	_wreck = createVehicle ["Land_Wreck_Van_F",_pos,[], 0, "NONE"];
	_wreck1 = createVehicle ["Land_Wreck_Ural_F",_pos,[], 0, "NONE"];

	sleep 2500;
	deleteMarker "MarkerS"; 
	deleteVehicle  _wreck; 
	deleteVehicle  _wreck1;
	deleteVehicle  _box1;

	};
if (_n1 == 2) then
	{
	_pos = [9288.4941,15857.896];
	_marker = createMarker ["MarkerS",_pos];  
	_marker setMarkerType "mil_objective";  
	"MarkerS" setMarkerText "Accident de Fourgon";  
	"MarkerS" setMarkerColor "ColorRed";
	sleep 5;
	[_pos] execVM "Events\mission\scripts\ai.sqf";
	_ogjstr = "<t align='center' size='2.0' color='#ff0000'>Mission<br/>Supply Van Crash</t><br/><t size='1.25' color='#ffff00'>______________<br/><br/>
	Our radar has picked up a supply van crash!<br/>
	You have our permission to confiscate any property you find as payment for eliminating the threat!";

	GlobalHint = _ogjstr;
	publicVariable "GlobalHint";

	_centerpos = getmarkerpos "MarkerS";
	_box1 = createVehicle ["box_ind_ammoveh_f", _pos, [], 0, "NONE"];
	diag_log ["##Spawn_Loot##"];

	_n2 = floor(random 6);
					
	if (_n2 == 0) then
		{
			_box1 = createVehicle ["box_ind_ammoveh_f",_pos,[],10,"CAN_COLLIDE"];
			clearWeaponCargoGlobal _box1;

			clearMagazineCargoGlobal _box1;
			_box1 addWeaponCargoGlobal ["LMG_Zafir_F", 1];
			_box1 addMagazineCargoGlobal ["150Rnd_762x51_Box", 2];
			_box1 additemcargoGlobal ["NVG_EPOCH", 1];
			_box1 additemcargoGlobal ["Rangefinder", 1];
			_box1 additemcargoGlobal ["FirstAidKit", 3];
			_box1 additemcargoGlobal ["optic_Arco", 1];
			_box1 additemcargoGlobal ["ItemKiloHemp", 2];
			_box1 additemcargoGlobal ["ItemRuby", 1];
			_box1 additemcargoGlobal ["Pelt_EPOCH", 3];
			_box1 additemcargoGlobal ["meatballs_epoch", 2];
			_box1 additemcargoGlobal ["HeatPack", 3];
			_box1 additemcargoGlobal ["ItemSodaOrangeSherbet", 2];
			_box1 additemcargoGlobal ["optic_ACO_grn", 1];
			_box1 additemcargoGlobal ["U_O_GhillieSuit", 1];
			_box1 addbackpackcargoGlobal ["B_Carryall_cbr", 1];
		};   
					
	if (_n2 == 1) then
		{
			clearWeaponCargoGlobal _box1;

			clearMagazineCargoGlobal _box1;
			_box1 addWeaponCargoGlobal ["hgun_P07_F", 2];
			_box1 addWeaponCargoGlobal ["arifle_MXC_Black_F", 1];
			_box1 addWeaponCargoGlobal ["arifle_Katiba_ACO_F", 2];
			_box1 addMagazineCargoGlobal ["16Rnd_9x21_Mag", 7];
			_box1 addMagazineCargoGlobal ["30Rnd_65x39_caseless_green_mag_Tracer", 6];
			_box1 additemcargoGlobal ["ItemGPS", 2];
			_box1 additemcargoGlobal ["Binocular", 2];
			_box1 additemcargoGlobal ["FirstAidKit", 4];
			_box1 additemcargoGlobal ["WhiskeyNoodle", 3];
			_box1 additemcargoGlobal ["muzzle_snds_H", 1];
			_box1 additemcargoGlobal ["ItemKiloHemp", 2];
			_box1 additemcargoGlobal ["scam_epoch", 2];
			_box1 additemcargoGlobal ["ColdPack", 1];
			_box1 additemcargoGlobal ["muzzle_snds_L", 1];
			_box1 additemcargoGlobal ["VehicleRepair", 1];
			_box1 additemcargoGlobal ["U_O_CombatUniform_ocamo", 1];
			_box1 addbackpackcargoGlobal ["B_Carryall_cbr", 1];
		}; 
		
	if (_n2 == 2) then
		{
			clearWeaponCargoGlobal _box1;

			clearMagazineCargoGlobal _box1;
			_box1 addWeaponCargoGlobal ["srifle_GM6_SOS_F", 1];
			_box1 addWeaponCargoGlobal ["srifle_DMR_01_F", 1];
			_box1 addWeaponCargoGlobal ["srifle_EBR_MRCO_pointer_F", 1];
			_box1 addMagazineCargoGlobal ["5Rnd_127x108_Mag", 4];
			_box1 addMagazineCargoGlobal ["10Rnd_762x51_Mag", 4];
			_box1 addMagazineCargoGlobal ["20Rnd_762x51_Mag", 5];
			_box1 additemcargoGlobal ["ItemCompass", 1];
			_box1 additemcargoGlobal ["Rangefinder", 2];
			_box1 additemcargoGlobal ["FirstAidKit", 1];
			_box1 additemcargoGlobal ["muzzle_snds_B", 1];
			_box1 additemcargoGlobal ["ItemGoldBar", 1];
			_box1 additemcargoGlobal ["Pelt_EPOCH", 2];
			_box1 additemcargoGlobal ["ChainSaw", 1];
			_box1 additemcargoGlobal ["ItemMixOil", 1];
			_box1 additemcargoGlobal ["muzzle_snds_B", 1];
			_box1 additemcargoGlobal ["optic_Nightstalker", 1];
			_box1 additemcargoGlobal ["ItemGPS", 1];
			_box1 addbackpackcargoGlobal ["B_Carryall_cbr", 1];
		}; 
		
	if (_n2 == 3) then
		{
			clearWeaponCargoGlobal _box1;

			clearMagazineCargoGlobal _box1;
			_box1 addWeaponCargoGlobal ["hgun_P07_F", 1];
			_box1 addWeaponCargoGlobal ["Rollins_F", 1];
			_box1 addMagazineCargoGlobal ["16Rnd_9x21_Mag", 4];
			_box1 addMagazineCargoGlobal ["5Rnd_rollins_mag", 4];
			_box1 additemcargoGlobal ["ItemCompass", 1];
			_box1 additemcargoGlobal ["Rangefinder", 2];
			_box1 additemcargoGlobal ["FirstAidKit", 1];
			_box1 additemcargoGlobal ["muzzle_snds_B", 1];
			_box1 additemcargoGlobal ["Pelt_EPOCH", 2];
			_box1 additemcargoGlobal ["ChainSaw", 1];
			_box1 additemcargoGlobal ["ItemMixOil", 2];
			_box1 additemcargoGlobal ["jerrycan_epoch", 2];
			_box1 addbackpackcargoGlobal ["B_Carryall_cbr", 1];
		}; 
		
	if (_n2 == 4) then
		{
			clearWeaponCargoGlobal _box1;

			clearMagazineCargoGlobal _box1;
			_box1 addWeaponCargoGlobal ["LMG_Zafir_F", 1];
			_box1 addMagazineCargoGlobal ["150Rnd_762x51_Box", 4];
			_box1 additemcargoGlobal ["ItemCompass", 1];
			_box1 additemcargoGlobal ["VehicleRepair", 1];
			_box1 additemcargoGlobal ["FirstAidKit", 1];
			_box1 additemcargoGlobal ["sweetcorn_epoch", 2];
			_box1 additemcargoGlobal ["ItemSodaRbull", 1];
			_box1 additemcargoGlobal ["Pelt_EPOCH", 2];
			_box1 additemcargoGlobal ["ItemKiloHemp", 5];
			_box1 additemcargoGlobal ["Towelette", 4];
			_box1 addbackpackcargoGlobal ["B_Carryall_cbr", 1];

		}; 
		
	if (_n2 == 5) then
		{
			clearWeaponCargoGlobal _box1;

			clearMagazineCargoGlobal _box1;
			_box1 addWeaponCargoGlobal ["srifle_GM6_SOS_F", 1];
			_box1 addWeaponCargoGlobal ["MultiGun", 1];
			_box1 addMagazineCargoGlobal ["5Rnd_127x108_Mag", 4];
			_box1 addMagazineCargoGlobal ["EnergyPack", 4];
			_box1 additemcargoGlobal ["ItemCompass", 1];
			_box1 additemcargoGlobal ["FirstAidKit", 1];
			_box1 additemcargoGlobal ["Repair_EPOCH", 1];
			_box1 additemcargoGlobal ["Defib_EPOCH", 1];
			_box1 additemcargoGlobal ["Heal_EPOCH", 2];
			_box1 additemcargoGlobal ["jerrycan_epoch", 2];
			_box1 addbackpackcargoGlobal ["B_Carryall_cbr", 1];
		}; 

	if (_n2 == 6) then
		{
			clearWeaponCargoGlobal _box1;

			clearMagazineCargoGlobal _box1;
			_box1 addWeaponCargoGlobal ["srifle_GM6_SOS_F", 1];
			_box1 addMagazineCargoGlobal ["5Rnd_127x108_Mag", 4];
			_box1 additemcargoGlobal ["ItemCompass", 1];
			_box1 additemcargoGlobal ["FirstAidKit", 1];
			_box1 additemcargoGlobal ["CinderBlocks", 16];
			_box1 additemcargoGlobal ["ChainSaw", 1];
			_box1 additemcargoGlobal ["ItemMixOil", 2];
			_box1 additemcargoGlobal ["jerrycan_epoch", 2];
			_box1 additemcargoGlobal ["EnergyPack", 4];
			_box1 additemcargoGlobal ["MortarBucket", 6];
			_box1 additemcargoGlobal ["ItemCorrugated", 6];
			_box1 addbackpackcargoGlobal ["B_Carryall_cbr", 1];
		}; 

	_wreck = createVehicle ["Land_Wreck_Van_F",_pos,[], 0, "NONE"];
	_wreck1 = createVehicle ["Land_Wreck_Ural_F",_pos,[], 0, "NONE"];

	sleep 2500;
	deleteMarker "MarkerS"; 
	deleteVehicle  _wreck; 
	deleteVehicle  _wreck1;
	deleteVehicle  _box1;

	};
if (_n1 == 3) then
	{
	_pos = [16886.119,15483.566];
	_marker = createMarker ["MarkerS",_pos];  
	_marker setMarkerType "mil_objective";  
	"MarkerS" setMarkerText "Accident de Fourgon";  
	"MarkerS" setMarkerColor "ColorRed";
	sleep 5;
	[_pos] execVM "Events\mission\scripts\ai.sqf";
	_ogjstr = "<t align='center' size='2.0' color='#ff0000'>Mission<br/>Supply Van Crash</t><br/><t size='1.25' color='#ffff00'>______________<br/><br/>
	Our radar has picked up a supply van crash!<br/>
	You have our permission to confiscate any property you find as payment for eliminating the threat!";

	GlobalHint = _ogjstr;
	publicVariable "GlobalHint";

	_centerpos = getmarkerpos "MarkerS";
	_box1 = createVehicle ["box_ind_ammoveh_f", _pos, [], 0, "NONE"];
	diag_log ["##Spawn_Loot##"];

	_n2 = floor(random 6);
					
	if (_n2 == 0) then
		{
			_box1 = createVehicle ["box_ind_ammoveh_f",_pos,[],10,"CAN_COLLIDE"];
			clearWeaponCargoGlobal _box1;

			clearMagazineCargoGlobal _box1;
			_box1 addWeaponCargoGlobal ["LMG_Zafir_F", 1];
			_box1 addMagazineCargoGlobal ["150Rnd_762x51_Box", 2];
			_box1 additemcargoGlobal ["NVG_EPOCH", 1];
			_box1 additemcargoGlobal ["Rangefinder", 1];
			_box1 additemcargoGlobal ["FirstAidKit", 3];
			_box1 additemcargoGlobal ["optic_Arco", 1];
			_box1 additemcargoGlobal ["ItemKiloHemp", 2];
			_box1 additemcargoGlobal ["ItemRuby", 1];
			_box1 additemcargoGlobal ["Pelt_EPOCH", 3];
			_box1 additemcargoGlobal ["meatballs_epoch", 2];
			_box1 additemcargoGlobal ["HeatPack", 3];
			_box1 additemcargoGlobal ["ItemSodaOrangeSherbet", 2];
			_box1 additemcargoGlobal ["optic_ACO_grn", 1];
			_box1 additemcargoGlobal ["U_O_GhillieSuit", 1];
			_box1 addbackpackcargoGlobal ["B_Carryall_cbr", 1];
		};   
					
	if (_n2 == 1) then
		{
			clearWeaponCargoGlobal _box1;

			clearMagazineCargoGlobal _box1;
			_box1 addWeaponCargoGlobal ["hgun_P07_F", 2];
			_box1 addWeaponCargoGlobal ["arifle_MXC_Black_F", 1];
			_box1 addWeaponCargoGlobal ["arifle_Katiba_ACO_F", 2];
			_box1 addMagazineCargoGlobal ["16Rnd_9x21_Mag", 7];
			_box1 addMagazineCargoGlobal ["30Rnd_65x39_caseless_green_mag_Tracer", 6];
			_box1 additemcargoGlobal ["ItemGPS", 2];
			_box1 additemcargoGlobal ["Binocular", 2];
			_box1 additemcargoGlobal ["FirstAidKit", 4];
			_box1 additemcargoGlobal ["WhiskeyNoodle", 3];
			_box1 additemcargoGlobal ["muzzle_snds_H", 1];
			_box1 additemcargoGlobal ["ItemKiloHemp", 2];
			_box1 additemcargoGlobal ["scam_epoch", 2];
			_box1 additemcargoGlobal ["ColdPack", 1];
			_box1 additemcargoGlobal ["muzzle_snds_L", 1];
			_box1 additemcargoGlobal ["VehicleRepair", 1];
			_box1 additemcargoGlobal ["U_O_CombatUniform_ocamo", 1];
			_box1 addbackpackcargoGlobal ["B_Carryall_cbr", 1];
		}; 
		
	if (_n2 == 2) then
		{
			clearWeaponCargoGlobal _box1;

			clearMagazineCargoGlobal _box1;
			_box1 addWeaponCargoGlobal ["srifle_GM6_SOS_F", 1];
			_box1 addWeaponCargoGlobal ["srifle_DMR_01_F", 1];
			_box1 addWeaponCargoGlobal ["srifle_EBR_MRCO_pointer_F", 1];
			_box1 addMagazineCargoGlobal ["5Rnd_127x108_Mag", 4];
			_box1 addMagazineCargoGlobal ["10Rnd_762x51_Mag", 4];
			_box1 addMagazineCargoGlobal ["20Rnd_762x51_Mag", 5];
			_box1 additemcargoGlobal ["ItemCompass", 1];
			_box1 additemcargoGlobal ["Rangefinder", 2];
			_box1 additemcargoGlobal ["FirstAidKit", 1];
			_box1 additemcargoGlobal ["muzzle_snds_B", 1];
			_box1 additemcargoGlobal ["ItemGoldBar", 1];
			_box1 additemcargoGlobal ["Pelt_EPOCH", 2];
			_box1 additemcargoGlobal ["ChainSaw", 1];
			_box1 additemcargoGlobal ["ItemMixOil", 1];
			_box1 additemcargoGlobal ["muzzle_snds_B", 1];
			_box1 additemcargoGlobal ["optic_Nightstalker", 1];
			_box1 additemcargoGlobal ["ItemGPS", 1];
			_box1 addbackpackcargoGlobal ["B_Carryall_cbr", 1];
		}; 
		
	if (_n2 == 3) then
		{
			clearWeaponCargoGlobal _box1;

			clearMagazineCargoGlobal _box1;
			_box1 addWeaponCargoGlobal ["hgun_P07_F", 1];
			_box1 addWeaponCargoGlobal ["Rollins_F", 1];
			_box1 addMagazineCargoGlobal ["16Rnd_9x21_Mag", 4];
			_box1 addMagazineCargoGlobal ["5Rnd_rollins_mag", 4];
			_box1 additemcargoGlobal ["ItemCompass", 1];
			_box1 additemcargoGlobal ["Rangefinder", 2];
			_box1 additemcargoGlobal ["FirstAidKit", 1];
			_box1 additemcargoGlobal ["muzzle_snds_B", 1];
			_box1 additemcargoGlobal ["Pelt_EPOCH", 2];
			_box1 additemcargoGlobal ["ChainSaw", 1];
			_box1 additemcargoGlobal ["ItemMixOil", 2];
			_box1 additemcargoGlobal ["jerrycan_epoch", 2];
			_box1 addbackpackcargoGlobal ["B_Carryall_cbr", 1];
		}; 
		
	if (_n2 == 4) then
		{
			clearWeaponCargoGlobal _box1;

			clearMagazineCargoGlobal _box1;
			_box1 addWeaponCargoGlobal ["LMG_Zafir_F", 1];
			_box1 addMagazineCargoGlobal ["150Rnd_762x51_Box", 4];
			_box1 additemcargoGlobal ["ItemCompass", 1];
			_box1 additemcargoGlobal ["VehicleRepair", 1];
			_box1 additemcargoGlobal ["FirstAidKit", 1];
			_box1 additemcargoGlobal ["sweetcorn_epoch", 2];
			_box1 additemcargoGlobal ["ItemSodaRbull", 1];
			_box1 additemcargoGlobal ["Pelt_EPOCH", 2];
			_box1 additemcargoGlobal ["ItemKiloHemp", 5];
			_box1 additemcargoGlobal ["Towelette", 4];
			_box1 addbackpackcargoGlobal ["B_Carryall_cbr", 1];

		}; 
		
	if (_n2 == 5) then
		{
			clearWeaponCargoGlobal _box1;

			clearMagazineCargoGlobal _box1;
			_box1 addWeaponCargoGlobal ["srifle_GM6_SOS_F", 1];
			_box1 addWeaponCargoGlobal ["MultiGun", 1];
			_box1 addMagazineCargoGlobal ["5Rnd_127x108_Mag", 4];
			_box1 addMagazineCargoGlobal ["EnergyPack", 4];
			_box1 additemcargoGlobal ["ItemCompass", 1];
			_box1 additemcargoGlobal ["FirstAidKit", 1];
			_box1 additemcargoGlobal ["Repair_EPOCH", 1];
			_box1 additemcargoGlobal ["Defib_EPOCH", 1];
			_box1 additemcargoGlobal ["Heal_EPOCH", 2];
			_box1 additemcargoGlobal ["jerrycan_epoch", 2];
			_box1 addbackpackcargoGlobal ["B_Carryall_cbr", 1];
		}; 

	if (_n2 == 6) then
		{
			clearWeaponCargoGlobal _box1;

			clearMagazineCargoGlobal _box1;
			_box1 addWeaponCargoGlobal ["srifle_GM6_SOS_F", 1];
			_box1 addMagazineCargoGlobal ["5Rnd_127x108_Mag", 4];
			_box1 additemcargoGlobal ["ItemCompass", 1];
			_box1 additemcargoGlobal ["FirstAidKit", 1];
			_box1 additemcargoGlobal ["CinderBlocks", 16];
			_box1 additemcargoGlobal ["ChainSaw", 1];
			_box1 additemcargoGlobal ["ItemMixOil", 2];
			_box1 additemcargoGlobal ["jerrycan_epoch", 2];
			_box1 additemcargoGlobal ["EnergyPack", 4];
			_box1 additemcargoGlobal ["MortarBucket", 6];
			_box1 additemcargoGlobal ["ItemCorrugated", 6];
			_box1 addbackpackcargoGlobal ["B_Carryall_cbr", 1];
		}; 

	_wreck = createVehicle ["Land_Wreck_Van_F",_pos,[], 0, "NONE"];
	_wreck1 = createVehicle ["Land_Wreck_Ural_F",_pos,[], 0, "NONE"];

	sleep 2500;
	deleteMarker "MarkerS"; 
	deleteVehicle  _wreck; 
	deleteVehicle  _wreck1;
	deleteVehicle  _box1;

	};
if (_n1 == 4) then
	{
	_pos = [21754.389,17893.715];
	_marker = createMarker ["MarkerS",_pos];  
	_marker setMarkerType "mil_objective";  
	"MarkerS" setMarkerText "Accident de Fourgon";  
	"MarkerS" setMarkerColor "ColorRed";
	sleep 5;
	[_pos] execVM "Events\mission\scripts\ai.sqf";
	_ogjstr = "<t align='center' size='2.0' color='#ff0000'>Mission<br/>Supply Van Crash</t><br/><t size='1.25' color='#ffff00'>______________<br/><br/>
	Our radar has picked up a supply van crash!<br/>
	You have our permission to confiscate any property you find as payment for eliminating the threat!";

	GlobalHint = _ogjstr;
	publicVariable "GlobalHint";

	_centerpos = getmarkerpos "MarkerS";
	_box1 = createVehicle ["box_ind_ammoveh_f", _pos, [], 0, "NONE"];
	diag_log ["##Spawn_Loot##"];

	_n2 = floor(random 6);
					
	if (_n2 == 0) then
		{
			_box1 = createVehicle ["box_ind_ammoveh_f",_pos,[],10,"CAN_COLLIDE"];
			clearWeaponCargoGlobal _box1;

			clearMagazineCargoGlobal _box1;
			_box1 addWeaponCargoGlobal ["LMG_Zafir_F", 1];
			_box1 addMagazineCargoGlobal ["150Rnd_762x51_Box", 2];
			_box1 additemcargoGlobal ["NVG_EPOCH", 1];
			_box1 additemcargoGlobal ["Rangefinder", 1];
			_box1 additemcargoGlobal ["FirstAidKit", 3];
			_box1 additemcargoGlobal ["optic_Arco", 1];
			_box1 additemcargoGlobal ["ItemKiloHemp", 2];
			_box1 additemcargoGlobal ["ItemRuby", 1];
			_box1 additemcargoGlobal ["Pelt_EPOCH", 3];
			_box1 additemcargoGlobal ["meatballs_epoch", 2];
			_box1 additemcargoGlobal ["HeatPack", 3];
			_box1 additemcargoGlobal ["ItemSodaOrangeSherbet", 2];
			_box1 additemcargoGlobal ["optic_ACO_grn", 1];
			_box1 additemcargoGlobal ["U_O_GhillieSuit", 1];
			_box1 addbackpackcargoGlobal ["B_Carryall_cbr", 1];
		};   
					
	if (_n2 == 1) then
		{
			clearWeaponCargoGlobal _box1;

			clearMagazineCargoGlobal _box1;
			_box1 addWeaponCargoGlobal ["hgun_P07_F", 2];
			_box1 addWeaponCargoGlobal ["arifle_MXC_Black_F", 1];
			_box1 addWeaponCargoGlobal ["arifle_Katiba_ACO_F", 2];
			_box1 addMagazineCargoGlobal ["16Rnd_9x21_Mag", 7];
			_box1 addMagazineCargoGlobal ["30Rnd_65x39_caseless_green_mag_Tracer", 6];
			_box1 additemcargoGlobal ["ItemGPS", 2];
			_box1 additemcargoGlobal ["Binocular", 2];
			_box1 additemcargoGlobal ["FirstAidKit", 4];
			_box1 additemcargoGlobal ["WhiskeyNoodle", 3];
			_box1 additemcargoGlobal ["muzzle_snds_H", 1];
			_box1 additemcargoGlobal ["ItemKiloHemp", 2];
			_box1 additemcargoGlobal ["scam_epoch", 2];
			_box1 additemcargoGlobal ["ColdPack", 1];
			_box1 additemcargoGlobal ["muzzle_snds_L", 1];
			_box1 additemcargoGlobal ["VehicleRepair", 1];
			_box1 additemcargoGlobal ["U_O_CombatUniform_ocamo", 1];
			_box1 addbackpackcargoGlobal ["B_Carryall_cbr", 1];
		}; 
		
	if (_n2 == 2) then
		{
			clearWeaponCargoGlobal _box1;

			clearMagazineCargoGlobal _box1;
			_box1 addWeaponCargoGlobal ["srifle_GM6_SOS_F", 1];
			_box1 addWeaponCargoGlobal ["srifle_DMR_01_F", 1];
			_box1 addWeaponCargoGlobal ["srifle_EBR_MRCO_pointer_F", 1];
			_box1 addMagazineCargoGlobal ["5Rnd_127x108_Mag", 4];
			_box1 addMagazineCargoGlobal ["10Rnd_762x51_Mag", 4];
			_box1 addMagazineCargoGlobal ["20Rnd_762x51_Mag", 5];
			_box1 additemcargoGlobal ["ItemCompass", 1];
			_box1 additemcargoGlobal ["Rangefinder", 2];
			_box1 additemcargoGlobal ["FirstAidKit", 1];
			_box1 additemcargoGlobal ["muzzle_snds_B", 1];
			_box1 additemcargoGlobal ["ItemGoldBar", 1];
			_box1 additemcargoGlobal ["Pelt_EPOCH", 2];
			_box1 additemcargoGlobal ["ChainSaw", 1];
			_box1 additemcargoGlobal ["ItemMixOil", 1];
			_box1 additemcargoGlobal ["muzzle_snds_B", 1];
			_box1 additemcargoGlobal ["optic_Nightstalker", 1];
			_box1 additemcargoGlobal ["ItemGPS", 1];
			_box1 addbackpackcargoGlobal ["B_Carryall_cbr", 1];
		}; 
		
	if (_n2 == 3) then
		{
			clearWeaponCargoGlobal _box1;

			clearMagazineCargoGlobal _box1;
			_box1 addWeaponCargoGlobal ["hgun_P07_F", 1];
			_box1 addWeaponCargoGlobal ["Rollins_F", 1];
			_box1 addMagazineCargoGlobal ["16Rnd_9x21_Mag", 4];
			_box1 addMagazineCargoGlobal ["5Rnd_rollins_mag", 4];
			_box1 additemcargoGlobal ["ItemCompass", 1];
			_box1 additemcargoGlobal ["Rangefinder", 2];
			_box1 additemcargoGlobal ["FirstAidKit", 1];
			_box1 additemcargoGlobal ["muzzle_snds_B", 1];
			_box1 additemcargoGlobal ["Pelt_EPOCH", 2];
			_box1 additemcargoGlobal ["ChainSaw", 1];
			_box1 additemcargoGlobal ["ItemMixOil", 2];
			_box1 additemcargoGlobal ["jerrycan_epoch", 2];
			_box1 addbackpackcargoGlobal ["B_Carryall_cbr", 1];
		}; 
		
	if (_n2 == 4) then
		{
			clearWeaponCargoGlobal _box1;

			clearMagazineCargoGlobal _box1;
			_box1 addWeaponCargoGlobal ["LMG_Zafir_F", 1];
			_box1 addMagazineCargoGlobal ["150Rnd_762x51_Box", 4];
			_box1 additemcargoGlobal ["ItemCompass", 1];
			_box1 additemcargoGlobal ["VehicleRepair", 1];
			_box1 additemcargoGlobal ["FirstAidKit", 1];
			_box1 additemcargoGlobal ["sweetcorn_epoch", 2];
			_box1 additemcargoGlobal ["ItemSodaRbull", 1];
			_box1 additemcargoGlobal ["Pelt_EPOCH", 2];
			_box1 additemcargoGlobal ["ItemKiloHemp", 5];
			_box1 additemcargoGlobal ["Towelette", 4];
			_box1 addbackpackcargoGlobal ["B_Carryall_cbr", 1];

		}; 
		
	if (_n2 == 5) then
		{
			clearWeaponCargoGlobal _box1;

			clearMagazineCargoGlobal _box1;
			_box1 addWeaponCargoGlobal ["srifle_GM6_SOS_F", 1];
			_box1 addWeaponCargoGlobal ["MultiGun", 1];
			_box1 addMagazineCargoGlobal ["5Rnd_127x108_Mag", 4];
			_box1 addMagazineCargoGlobal ["EnergyPack", 4];
			_box1 additemcargoGlobal ["ItemCompass", 1];
			_box1 additemcargoGlobal ["FirstAidKit", 1];
			_box1 additemcargoGlobal ["Repair_EPOCH", 1];
			_box1 additemcargoGlobal ["Defib_EPOCH", 1];
			_box1 additemcargoGlobal ["Heal_EPOCH", 2];
			_box1 additemcargoGlobal ["jerrycan_epoch", 2];
			_box1 addbackpackcargoGlobal ["B_Carryall_cbr", 1];
		}; 

	if (_n2 == 6) then
		{
			clearWeaponCargoGlobal _box1;

			clearMagazineCargoGlobal _box1;
			_box1 addWeaponCargoGlobal ["srifle_GM6_SOS_F", 1];
			_box1 addMagazineCargoGlobal ["5Rnd_127x108_Mag", 4];
			_box1 additemcargoGlobal ["ItemCompass", 1];
			_box1 additemcargoGlobal ["FirstAidKit", 1];
			_box1 additemcargoGlobal ["CinderBlocks", 16];
			_box1 additemcargoGlobal ["ChainSaw", 1];
			_box1 additemcargoGlobal ["ItemMixOil", 2];
			_box1 additemcargoGlobal ["jerrycan_epoch", 2];
			_box1 additemcargoGlobal ["EnergyPack", 4];
			_box1 additemcargoGlobal ["MortarBucket", 6];
			_box1 additemcargoGlobal ["ItemCorrugated", 6];
			_box1 addbackpackcargoGlobal ["B_Carryall_cbr", 1];
		}; 

	_wreck = createVehicle ["Land_Wreck_Van_F",_pos,[], 0, "NONE"];
	_wreck1 = createVehicle ["Land_Wreck_Ural_F",_pos,[], 0, "NONE"];

	sleep 2500;
	deleteMarker "MarkerS"; 
	deleteVehicle  _wreck; 
	deleteVehicle  _wreck1;
	deleteVehicle  _box1;

	};
if (_n1 == 5) then
	{
	_pos = [19952.271,11472.618];
	_marker = createMarker ["MarkerS",_pos];  
	_marker setMarkerType "mil_objective";  
	"MarkerS" setMarkerText "Accident de Fourgon";  
	"MarkerS" setMarkerColor "ColorRed";
	sleep 5;
	[_pos] execVM "Events\mission\scripts\ai.sqf";
	_ogjstr = "<t align='center' size='2.0' color='#ff0000'>Mission<br/>Supply Van Crash</t><br/><t size='1.25' color='#ffff00'>______________<br/><br/>
	Our radar has picked up a supply van crash!<br/>
	You have our permission to confiscate any property you find as payment for eliminating the threat!";

	GlobalHint = _ogjstr;
	publicVariable "GlobalHint";

	_centerpos = getmarkerpos "MarkerS";
	_box1 = createVehicle ["box_ind_ammoveh_f", _pos, [], 0, "NONE"];
	diag_log ["##Spawn_Loot##"];

	_n2 = floor(random 6);
					
	if (_n2 == 0) then
		{
			_box1 = createVehicle ["box_ind_ammoveh_f",_pos,[],10,"CAN_COLLIDE"];
			clearWeaponCargoGlobal _box1;

			clearMagazineCargoGlobal _box1;
			_box1 addWeaponCargoGlobal ["LMG_Zafir_F", 1];
			_box1 addMagazineCargoGlobal ["150Rnd_762x51_Box", 2];
			_box1 additemcargoGlobal ["NVG_EPOCH", 1];
			_box1 additemcargoGlobal ["Rangefinder", 1];
			_box1 additemcargoGlobal ["FirstAidKit", 3];
			_box1 additemcargoGlobal ["optic_Arco", 1];
			_box1 additemcargoGlobal ["ItemKiloHemp", 2];
			_box1 additemcargoGlobal ["ItemRuby", 1];
			_box1 additemcargoGlobal ["Pelt_EPOCH", 3];
			_box1 additemcargoGlobal ["meatballs_epoch", 2];
			_box1 additemcargoGlobal ["HeatPack", 3];
			_box1 additemcargoGlobal ["ItemSodaOrangeSherbet", 2];
			_box1 additemcargoGlobal ["optic_ACO_grn", 1];
			_box1 additemcargoGlobal ["U_O_GhillieSuit", 1];
			_box1 addbackpackcargoGlobal ["B_Carryall_cbr", 1];
		};   
					
	if (_n2 == 1) then
		{
			clearWeaponCargoGlobal _box1;

			clearMagazineCargoGlobal _box1;
			_box1 addWeaponCargoGlobal ["hgun_P07_F", 2];
			_box1 addWeaponCargoGlobal ["arifle_MXC_Black_F", 1];
			_box1 addWeaponCargoGlobal ["arifle_Katiba_ACO_F", 2];
			_box1 addMagazineCargoGlobal ["16Rnd_9x21_Mag", 7];
			_box1 addMagazineCargoGlobal ["30Rnd_65x39_caseless_green_mag_Tracer", 6];
			_box1 additemcargoGlobal ["ItemGPS", 2];
			_box1 additemcargoGlobal ["Binocular", 2];
			_box1 additemcargoGlobal ["FirstAidKit", 4];
			_box1 additemcargoGlobal ["WhiskeyNoodle", 3];
			_box1 additemcargoGlobal ["muzzle_snds_H", 1];
			_box1 additemcargoGlobal ["ItemKiloHemp", 2];
			_box1 additemcargoGlobal ["scam_epoch", 2];
			_box1 additemcargoGlobal ["ColdPack", 1];
			_box1 additemcargoGlobal ["muzzle_snds_L", 1];
			_box1 additemcargoGlobal ["VehicleRepair", 1];
			_box1 additemcargoGlobal ["U_O_CombatUniform_ocamo", 1];
			_box1 addbackpackcargoGlobal ["B_Carryall_cbr", 1];
		}; 
		
	if (_n2 == 2) then
		{
			clearWeaponCargoGlobal _box1;

			clearMagazineCargoGlobal _box1;
			_box1 addWeaponCargoGlobal ["srifle_GM6_SOS_F", 1];
			_box1 addWeaponCargoGlobal ["srifle_DMR_01_F", 1];
			_box1 addWeaponCargoGlobal ["srifle_EBR_MRCO_pointer_F", 1];
			_box1 addMagazineCargoGlobal ["5Rnd_127x108_Mag", 4];
			_box1 addMagazineCargoGlobal ["10Rnd_762x51_Mag", 4];
			_box1 addMagazineCargoGlobal ["20Rnd_762x51_Mag", 5];
			_box1 additemcargoGlobal ["ItemCompass", 1];
			_box1 additemcargoGlobal ["Rangefinder", 2];
			_box1 additemcargoGlobal ["FirstAidKit", 1];
			_box1 additemcargoGlobal ["muzzle_snds_B", 1];
			_box1 additemcargoGlobal ["ItemGoldBar", 1];
			_box1 additemcargoGlobal ["Pelt_EPOCH", 2];
			_box1 additemcargoGlobal ["ChainSaw", 1];
			_box1 additemcargoGlobal ["ItemMixOil", 1];
			_box1 additemcargoGlobal ["muzzle_snds_B", 1];
			_box1 additemcargoGlobal ["optic_Nightstalker", 1];
			_box1 additemcargoGlobal ["ItemGPS", 1];
			_box1 addbackpackcargoGlobal ["B_Carryall_cbr", 1];
		}; 
		
	if (_n2 == 3) then
		{
			clearWeaponCargoGlobal _box1;

			clearMagazineCargoGlobal _box1;
			_box1 addWeaponCargoGlobal ["hgun_P07_F", 1];
			_box1 addWeaponCargoGlobal ["Rollins_F", 1];
			_box1 addMagazineCargoGlobal ["16Rnd_9x21_Mag", 4];
			_box1 addMagazineCargoGlobal ["5Rnd_rollins_mag", 4];
			_box1 additemcargoGlobal ["ItemCompass", 1];
			_box1 additemcargoGlobal ["Rangefinder", 2];
			_box1 additemcargoGlobal ["FirstAidKit", 1];
			_box1 additemcargoGlobal ["muzzle_snds_B", 1];
			_box1 additemcargoGlobal ["Pelt_EPOCH", 2];
			_box1 additemcargoGlobal ["ChainSaw", 1];
			_box1 additemcargoGlobal ["ItemMixOil", 2];
			_box1 additemcargoGlobal ["jerrycan_epoch", 2];
			_box1 addbackpackcargoGlobal ["B_Carryall_cbr", 1];
		}; 
		
	if (_n2 == 4) then
		{
			clearWeaponCargoGlobal _box1;

			clearMagazineCargoGlobal _box1;
			_box1 addWeaponCargoGlobal ["LMG_Zafir_F", 1];
			_box1 addMagazineCargoGlobal ["150Rnd_762x51_Box", 4];
			_box1 additemcargoGlobal ["ItemCompass", 1];
			_box1 additemcargoGlobal ["VehicleRepair", 1];
			_box1 additemcargoGlobal ["FirstAidKit", 1];
			_box1 additemcargoGlobal ["sweetcorn_epoch", 2];
			_box1 additemcargoGlobal ["ItemSodaRbull", 1];
			_box1 additemcargoGlobal ["Pelt_EPOCH", 2];
			_box1 additemcargoGlobal ["ItemKiloHemp", 5];
			_box1 additemcargoGlobal ["Towelette", 4];
			_box1 addbackpackcargoGlobal ["B_Carryall_cbr", 1];

		}; 
		
	if (_n2 == 5) then
		{
			clearWeaponCargoGlobal _box1;

			clearMagazineCargoGlobal _box1;
			_box1 addWeaponCargoGlobal ["srifle_GM6_SOS_F", 1];
			_box1 addWeaponCargoGlobal ["MultiGun", 1];
			_box1 addMagazineCargoGlobal ["5Rnd_127x108_Mag", 4];
			_box1 addMagazineCargoGlobal ["EnergyPack", 4];
			_box1 additemcargoGlobal ["ItemCompass", 1];
			_box1 additemcargoGlobal ["FirstAidKit", 1];
			_box1 additemcargoGlobal ["Repair_EPOCH", 1];
			_box1 additemcargoGlobal ["Defib_EPOCH", 1];
			_box1 additemcargoGlobal ["Heal_EPOCH", 2];
			_box1 additemcargoGlobal ["jerrycan_epoch", 2];
			_box1 addbackpackcargoGlobal ["B_Carryall_cbr", 1];
		}; 

	if (_n2 == 6) then
		{
			clearWeaponCargoGlobal _box1;

			clearMagazineCargoGlobal _box1;
			_box1 addWeaponCargoGlobal ["srifle_GM6_SOS_F", 1];
			_box1 addMagazineCargoGlobal ["5Rnd_127x108_Mag", 4];
			_box1 additemcargoGlobal ["ItemCompass", 1];
			_box1 additemcargoGlobal ["FirstAidKit", 1];
			_box1 additemcargoGlobal ["CinderBlocks", 16];
			_box1 additemcargoGlobal ["ChainSaw", 1];
			_box1 additemcargoGlobal ["ItemMixOil", 2];
			_box1 additemcargoGlobal ["jerrycan_epoch", 2];
			_box1 additemcargoGlobal ["EnergyPack", 4];
			_box1 additemcargoGlobal ["MortarBucket", 6];
			_box1 additemcargoGlobal ["ItemCorrugated", 6];
			_box1 addbackpackcargoGlobal ["B_Carryall_cbr", 1];
		}; 

	_wreck = createVehicle ["Land_Wreck_Van_F",_pos,[], 0, "NONE"];
	_wreck1 = createVehicle ["Land_Wreck_Ural_F",_pos,[], 0, "NONE"];

	sleep 2500;
	deleteMarker "MarkerS"; 
	deleteVehicle  _wreck; 
	deleteVehicle  _wreck1;
	deleteVehicle  _box1;

	};
if (_n1 == 6) then
	{
	_pos = [13655.464,19936.129];
	_marker = createMarker ["MarkerS",_pos];  
	_marker setMarkerType "mil_objective";  
	"MarkerS" setMarkerText "Accident de Fourgon";  
	"MarkerS" setMarkerColor "ColorRed";
	sleep 5;
	[_pos] execVM "Events\mission\scripts\ai.sqf";
	_ogjstr = "<t align='center' size='2.0' color='#ff0000'>Mission<br/>Supply Van Crash</t><br/><t size='1.25' color='#ffff00'>______________<br/><br/>
	Our radar has picked up a supply van crash!<br/>
	You have our permission to confiscate any property you find as payment for eliminating the threat!";

	GlobalHint = _ogjstr;
	publicVariable "GlobalHint";

	_centerpos = getmarkerpos "MarkerS";
	_box1 = createVehicle ["box_ind_ammoveh_f", _pos, [], 0, "NONE"];
	diag_log ["##Spawn_Loot##"];

	_n2 = floor(random 6);
					
	if (_n2 == 0) then
		{
			_box1 = createVehicle ["box_ind_ammoveh_f",_pos,[],10,"CAN_COLLIDE"];
			clearWeaponCargoGlobal _box1;

			clearMagazineCargoGlobal _box1;
			_box1 addWeaponCargoGlobal ["LMG_Zafir_F", 1];
			_box1 addMagazineCargoGlobal ["150Rnd_762x51_Box", 2];
			_box1 additemcargoGlobal ["NVG_EPOCH", 1];
			_box1 additemcargoGlobal ["Rangefinder", 1];
			_box1 additemcargoGlobal ["FirstAidKit", 3];
			_box1 additemcargoGlobal ["optic_Arco", 1];
			_box1 additemcargoGlobal ["ItemKiloHemp", 2];
			_box1 additemcargoGlobal ["ItemRuby", 1];
			_box1 additemcargoGlobal ["Pelt_EPOCH", 3];
			_box1 additemcargoGlobal ["meatballs_epoch", 2];
			_box1 additemcargoGlobal ["HeatPack", 3];
			_box1 additemcargoGlobal ["ItemSodaOrangeSherbet", 2];
			_box1 additemcargoGlobal ["optic_ACO_grn", 1];
			_box1 additemcargoGlobal ["U_O_GhillieSuit", 1];
			_box1 addbackpackcargoGlobal ["B_Carryall_cbr", 1];
		};   
					
	if (_n2 == 1) then
		{
			clearWeaponCargoGlobal _box1;

			clearMagazineCargoGlobal _box1;
			_box1 addWeaponCargoGlobal ["hgun_P07_F", 2];
			_box1 addWeaponCargoGlobal ["arifle_MXC_Black_F", 1];
			_box1 addWeaponCargoGlobal ["arifle_Katiba_ACO_F", 2];
			_box1 addMagazineCargoGlobal ["16Rnd_9x21_Mag", 7];
			_box1 addMagazineCargoGlobal ["30Rnd_65x39_caseless_green_mag_Tracer", 6];
			_box1 additemcargoGlobal ["ItemGPS", 2];
			_box1 additemcargoGlobal ["Binocular", 2];
			_box1 additemcargoGlobal ["FirstAidKit", 4];
			_box1 additemcargoGlobal ["WhiskeyNoodle", 3];
			_box1 additemcargoGlobal ["muzzle_snds_H", 1];
			_box1 additemcargoGlobal ["ItemKiloHemp", 2];
			_box1 additemcargoGlobal ["scam_epoch", 2];
			_box1 additemcargoGlobal ["ColdPack", 1];
			_box1 additemcargoGlobal ["muzzle_snds_L", 1];
			_box1 additemcargoGlobal ["VehicleRepair", 1];
			_box1 additemcargoGlobal ["U_O_CombatUniform_ocamo", 1];
			_box1 addbackpackcargoGlobal ["B_Carryall_cbr", 1];
		}; 
		
	if (_n2 == 2) then
		{
			clearWeaponCargoGlobal _box1;

			clearMagazineCargoGlobal _box1;
			_box1 addWeaponCargoGlobal ["srifle_GM6_SOS_F", 1];
			_box1 addWeaponCargoGlobal ["srifle_DMR_01_F", 1];
			_box1 addWeaponCargoGlobal ["srifle_EBR_MRCO_pointer_F", 1];
			_box1 addMagazineCargoGlobal ["5Rnd_127x108_Mag", 4];
			_box1 addMagazineCargoGlobal ["10Rnd_762x51_Mag", 4];
			_box1 addMagazineCargoGlobal ["20Rnd_762x51_Mag", 5];
			_box1 additemcargoGlobal ["ItemCompass", 1];
			_box1 additemcargoGlobal ["Rangefinder", 2];
			_box1 additemcargoGlobal ["FirstAidKit", 1];
			_box1 additemcargoGlobal ["muzzle_snds_B", 1];
			_box1 additemcargoGlobal ["ItemGoldBar", 1];
			_box1 additemcargoGlobal ["Pelt_EPOCH", 2];
			_box1 additemcargoGlobal ["ChainSaw", 1];
			_box1 additemcargoGlobal ["ItemMixOil", 1];
			_box1 additemcargoGlobal ["muzzle_snds_B", 1];
			_box1 additemcargoGlobal ["optic_Nightstalker", 1];
			_box1 additemcargoGlobal ["ItemGPS", 1];
			_box1 addbackpackcargoGlobal ["B_Carryall_cbr", 1];
		}; 
		
	if (_n2 == 3) then
		{
			clearWeaponCargoGlobal _box1;

			clearMagazineCargoGlobal _box1;
			_box1 addWeaponCargoGlobal ["hgun_P07_F", 1];
			_box1 addWeaponCargoGlobal ["Rollins_F", 1];
			_box1 addMagazineCargoGlobal ["16Rnd_9x21_Mag", 4];
			_box1 addMagazineCargoGlobal ["5Rnd_rollins_mag", 4];
			_box1 additemcargoGlobal ["ItemCompass", 1];
			_box1 additemcargoGlobal ["Rangefinder", 2];
			_box1 additemcargoGlobal ["FirstAidKit", 1];
			_box1 additemcargoGlobal ["muzzle_snds_B", 1];
			_box1 additemcargoGlobal ["Pelt_EPOCH", 2];
			_box1 additemcargoGlobal ["ChainSaw", 1];
			_box1 additemcargoGlobal ["ItemMixOil", 2];
			_box1 additemcargoGlobal ["jerrycan_epoch", 2];
			_box1 addbackpackcargoGlobal ["B_Carryall_cbr", 1];
		}; 
		
	if (_n2 == 4) then
		{
			clearWeaponCargoGlobal _box1;

			clearMagazineCargoGlobal _box1;
			_box1 addWeaponCargoGlobal ["LMG_Zafir_F", 1];
			_box1 addMagazineCargoGlobal ["150Rnd_762x51_Box", 4];
			_box1 additemcargoGlobal ["ItemCompass", 1];
			_box1 additemcargoGlobal ["VehicleRepair", 1];
			_box1 additemcargoGlobal ["FirstAidKit", 1];
			_box1 additemcargoGlobal ["sweetcorn_epoch", 2];
			_box1 additemcargoGlobal ["ItemSodaRbull", 1];
			_box1 additemcargoGlobal ["Pelt_EPOCH", 2];
			_box1 additemcargoGlobal ["ItemKiloHemp", 5];
			_box1 additemcargoGlobal ["Towelette", 4];
			_box1 addbackpackcargoGlobal ["B_Carryall_cbr", 1];

		}; 
		
	if (_n2 == 5) then
		{
			clearWeaponCargoGlobal _box1;

			clearMagazineCargoGlobal _box1;
			_box1 addWeaponCargoGlobal ["srifle_GM6_SOS_F", 1];
			_box1 addWeaponCargoGlobal ["MultiGun", 1];
			_box1 addMagazineCargoGlobal ["5Rnd_127x108_Mag", 4];
			_box1 addMagazineCargoGlobal ["EnergyPack", 4];
			_box1 additemcargoGlobal ["ItemCompass", 1];
			_box1 additemcargoGlobal ["FirstAidKit", 1];
			_box1 additemcargoGlobal ["Repair_EPOCH", 1];
			_box1 additemcargoGlobal ["Defib_EPOCH", 1];
			_box1 additemcargoGlobal ["Heal_EPOCH", 2];
			_box1 additemcargoGlobal ["jerrycan_epoch", 2];
			_box1 addbackpackcargoGlobal ["B_Carryall_cbr", 1];
		}; 

	if (_n2 == 6) then
		{
			clearWeaponCargoGlobal _box1;

			clearMagazineCargoGlobal _box1;
			_box1 addWeaponCargoGlobal ["srifle_GM6_SOS_F", 1];
			_box1 addMagazineCargoGlobal ["5Rnd_127x108_Mag", 4];
			_box1 additemcargoGlobal ["ItemCompass", 1];
			_box1 additemcargoGlobal ["FirstAidKit", 1];
			_box1 additemcargoGlobal ["CinderBlocks", 16];
			_box1 additemcargoGlobal ["ChainSaw", 1];
			_box1 additemcargoGlobal ["ItemMixOil", 2];
			_box1 additemcargoGlobal ["jerrycan_epoch", 2];
			_box1 additemcargoGlobal ["EnergyPack", 4];
			_box1 additemcargoGlobal ["MortarBucket", 6];
			_box1 additemcargoGlobal ["ItemCorrugated", 6];
			_box1 addbackpackcargoGlobal ["B_Carryall_cbr", 1];
		}; 

	_wreck = createVehicle ["Land_Wreck_Van_F",_pos,[], 0, "NONE"];
	_wreck1 = createVehicle ["Land_Wreck_Ural_F",_pos,[], 0, "NONE"];

	sleep 2500;
	deleteMarker "MarkerS"; 
	deleteVehicle  _wreck; 
	deleteVehicle  _wreck1;
	deleteVehicle  _box1;

	};
	
	


sleep 10;
[]execVM "Events\mission\initMPlus.sqf";
