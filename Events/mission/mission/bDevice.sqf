/*
	Based Of drsubo Mission Scripts
	File: bCamp.sqf
	Author: Cammygames, drsubo
*/

["Mission: Bandit Plane Crash","BIS_fnc_log"] call BIS_fnc_MP;

_n1 = floor(random 4);				
if (_n1 == 0) then
	{
		_pos = [16586.045,12732.296];
		_marker = createMarker ["MarkerD",_pos];
		_marker setMarkerType "mil_objective";  
		"MarkerD" setMarkerText "poseurs de bombe";  
		"MarkerD" setMarkerColor "ColorRed";
		sleep 5;
		[_pos] execVM "Events\mission\scripts\ai.sqf";
		_ogjstr = "<t align='center' size='2.0' color='#ff0000'>Mission<br/>Device discovered!</t><br/><t size='1.25' color='#ffff00'>______________<br/><br/>
		A nuclear device has been discovered<br/>
		Remove the device and enemies as soon as possible!!!";
		GlobalHint = _ogjstr;
		publicVariable "GlobalHint";
		_centerpos = getmarkerpos "MarkerD";
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

		_wreck = createVehicle ["Land_Device_disassembled_F",_pos,[], 0, "NONE"];

		sleep 2500;
		deleteMarker "MarkerD"; 
		deleteVehicle  _wreck;
		deleteVehicle  _box1;
	};
if (_n1 == 1) then
	{
		
		_pos = [6140.4966,16251.044];
		_marker = createMarker ["MarkerD",_pos];
		_marker setMarkerType "mil_objective";  
		"MarkerD" setMarkerText "poseurs de bombe";  
		"MarkerD" setMarkerColor "ColorRed";
		sleep 5;
		[_pos] execVM "Events\mission\scripts\ai.sqf";
		_ogjstr = "<t align='center' size='2.0' color='#ff0000'>Mission<br/>Device discovered!</t><br/><t size='1.25' color='#ffff00'>______________<br/><br/>
		A nuclear device has been discovered<br/>
		Remove the device and enemies as soon as possible!!!";
		GlobalHint = _ogjstr;
		publicVariable "GlobalHint";
		_centerpos = getmarkerpos "MarkerD";
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

		_wreck = createVehicle ["Land_Device_disassembled_F",_pos,[], 0, "NONE"];

		sleep 2500;
		deleteMarker "MarkerD"; 
		deleteVehicle  _wreck;
		deleteVehicle  _box1;
	};
if (_n1 == 2) then
	{
		_pos = [15417.719,16246.232];
		_marker = createMarker ["MarkerD",_pos];
		_marker setMarkerType "mil_objective";  
		"MarkerD" setMarkerText "poseurs de bombe";  
		"MarkerD" setMarkerColor "ColorRed";
		sleep 5;
		[_pos] execVM "Events\mission\scripts\ai.sqf";
		_ogjstr = "<t align='center' size='2.0' color='#ff0000'>Mission<br/>Device discovered!</t><br/><t size='1.25' color='#ffff00'>______________<br/><br/>
		A nuclear device has been discovered<br/>
		Remove the device and enemies as soon as possible!!!";
		GlobalHint = _ogjstr;
		publicVariable "GlobalHint";
		_centerpos = getmarkerpos "MarkerD";
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

		_wreck = createVehicle ["Land_Device_disassembled_F",_pos,[], 0, "NONE"];

		sleep 2500;
		deleteMarker "MarkerD"; 
		deleteVehicle  _wreck;
		deleteVehicle  _box1;
	};
if (_n1 == 3) then
	{
		_pos = [4324.8516,20693.297];
		_marker = createMarker ["MarkerD",_pos];
		_marker setMarkerType "mil_objective";  
		"MarkerD" setMarkerText "poseurs de bombe";  
		"MarkerD" setMarkerColor "ColorRed";
		sleep 5;
		[_pos] execVM "Events\mission\scripts\ai.sqf";
		_ogjstr = "<t align='center' size='2.0' color='#ff0000'>Mission<br/>Device discovered!</t><br/><t size='1.25' color='#ffff00'>______________<br/><br/>
		A nuclear device has been discovered<br/>
		Remove the device and enemies as soon as possible!!!";
		GlobalHint = _ogjstr;
		publicVariable "GlobalHint";
		_centerpos = getmarkerpos "MarkerD";
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

		_wreck = createVehicle ["Land_Device_disassembled_F",_pos,[], 0, "NONE"];

		sleep 2500;
		deleteMarker "MarkerD"; 
		deleteVehicle  _wreck;
		deleteVehicle  _box1;
	};
if (_n1 == 4) then
	{
		_pos = [20263.781,8886.834];
		_marker = createMarker ["MarkerD",_pos];
		_marker setMarkerType "mil_objective";  
		"MarkerD" setMarkerText "poseurs de bombe";  
		"MarkerD" setMarkerColor "ColorRed";
		sleep 5;
		[_pos] execVM "Events\mission\scripts\ai.sqf";
		_ogjstr = "<t align='center' size='2.0' color='#ff0000'>Mission<br/>Device discovered!</t><br/><t size='1.25' color='#ffff00'>______________<br/><br/>
		A nuclear device has been discovered<br/>
		Remove the device and enemies as soon as possible!!!";
		GlobalHint = _ogjstr;
		publicVariable "GlobalHint";
		_centerpos = getmarkerpos "MarkerD";
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

		_wreck = createVehicle ["Land_Device_disassembled_F",_pos,[], 0, "NONE"];

		sleep 2500;
		deleteMarker "MarkerD"; 
		deleteVehicle  _wreck;
		deleteVehicle  _box1;
	};


 
sleep 10;
[]execVM "Events\mission\initMPlus.sqf";
