/* loadgear player */
diag_log format["##respawnplayer.sqf##"];

if (!isServer) then {
	waitUntil {!isNull player};
	waitUntil {player == player};
	
	while {true} do {
		_player = player;
		player addEventHandler ["Respawn", {
			if (getPlayerUID player in ["76561198020634093"]) then {
			
				
					_n1 = floor(random 10);				
					if (_n1 == 0) then
						{
							player forceAddUniform "U_Rangemaster";
						};
					if (_n1 == 1) then
						{
							player forceAddUniform "U_NikosBody";
						};
					if (_n1 == 2) then
						{
							player forceAddUniform "U_C_HunterBody_grn";
						};
					if (_n1 == 3) then
						{
							player forceAddUniform "U_IG_Guerilla1_1";
						};
					if (_n1 == 4) then
						{
							player forceAddUniform "U_IG_Guerilla2_1";
						};
					if (_n1 == 5) then
						{
							player forceAddUniform "U_IG_Guerilla2_2";
						};
					if (_n1 == 6) then
						{
							player forceAddUniform "U_IG_Guerilla2_3";
						};
					if (_n1 == 7) then
						{
							player forceAddUniform "U_IG_Guerilla3_1";
						};
					if (_n1 == 8) then
						{
							player forceAddUniform "U_IG_Guerilla3_2";
						};
					if (_n1 == 9) then
						{
							player forceAddUniform "U_I_G_resistanceLeader_F";
						};	
					if (_n1 == 10) then
						{
							player forceAddUniform "U_C_Poor_1";
						};
				removeVest player;
				player addWeapon "EpochRadio0";
				player addWeapon "ItemMap";
				player addWeapon "ItemCompass";
				_n2 = floor(random 4);				
					if (_n2 == 0) then
						{
							player addVest "V_26_EPOCH";
						};
					if (_n2 == 1) then
						{
							player addVest "V_25_EPOCH";
						};
					if (_n2 == 2) then
						{
							player addVest "V_24_EPOCH";
						};
					if (_n2 == 3) then
						{
							player addVest "V_23_EPOCH";
						};
					if (_n2 == 4) then
						{
							player addVest "V_22_EPOCH";
						};
				player addItemToVest "FirstAidKit";
				player addItemToVest "FirstAidKit";
				player addItemToVest "ItemSodaRbull";
				player addItemToVest "ItemSodaRbull";
				player addItemToVest "scam_epoch";
				player addItemToVest "meatballs_epoch";
				player addItemToVest "Chemlight_yellow";
				player addweapon "hgun_Pistol_heavy_01_F";
				player addWeapon "Rollins_F";
				player addMagazine "5Rnd_rollins_mag";
				player addItemToVest "5Rnd_rollins_mag";
				player addItemToVest "5Rnd_rollins_mag";
				player addPrimaryWeaponItem "optic_Aco";
				player addweapon "hgun_Pistol_heavy_01_F";
				player addItem "optic_MRD";
				player addItem "muzzle_snds_acp";
				player addItemToVest "11Rnd_45ACP_Mag";
				player addMagazine "11Rnd_45ACP_Mag";
				player addItemToVest "11Rnd_45ACP_Mag";
				EPOCH_playerCrypto = 300;
				
				
			} else {
				
				
					_n1 = floor(random 10);				
					if (_n1 == 0) then
						{
							player forceAddUniform "U_Rangemaster";
						};
					if (_n1 == 1) then
						{
							player forceAddUniform "U_NikosBody";
						};
					if (_n1 == 2) then
						{
							player forceAddUniform "U_C_HunterBody_grn";
						};
					if (_n1 == 3) then
						{
							player forceAddUniform "U_IG_Guerilla1_1";
						};
					if (_n1 == 4) then
						{
							player forceAddUniform "U_IG_Guerilla2_1";
						};
					if (_n1 == 5) then
						{
							player forceAddUniform "U_IG_Guerilla2_2";
						};
					if (_n1 == 6) then
						{
							player forceAddUniform "U_IG_Guerilla2_3";
						};
					if (_n1 == 7) then
						{
							player forceAddUniform "U_IG_Guerilla3_1";
						};
					if (_n1 == 8) then
						{
							player forceAddUniform "U_IG_Guerilla3_2";
						};
					if (_n1 == 9) then
						{
							player forceAddUniform "U_I_G_resistanceLeader_F";
						};	
					if (_n1 == 10) then
						{
							player forceAddUniform "U_C_Poor_1";
						};
				
				removeVest player;
				player addWeapon "EpochRadio0";
				player addWeapon "ItemMap";
				player addWeapon "ItemCompass";
				_n2 = floor(random 4);				
					if (_n2 == 0) then
						{
							player addVest "V_26_EPOCH";
						};
					if (_n2 == 1) then
						{
							player addVest "V_25_EPOCH";
						};
					if (_n2 == 2) then
						{
							player addVest "V_24_EPOCH";
						};
					if (_n2 == 3) then
						{
							player addVest "V_23_EPOCH";
						};
					if (_n2 == 4) then
						{
							player addVest "V_22_EPOCH";
						};
				player addItemToVest "FirstAidKit";
				player addItemToVest "FirstAidKit";
				player addItemToVest "ItemSodaRbull";
				player addItemToVest "ItemSodaRbull";
				player addItemToVest "scam_epoch";
				player addItemToVest "meatballs_epoch";
				player addItemToVest "Chemlight_yellow";
				player addweapon "hgun_Pistol_heavy_01_F";
				player addWeapon "Rollins_F";
				player addMagazine "5Rnd_rollins_mag";
				player addItemToVest "5Rnd_rollins_mag";
				player addItemToVest "5Rnd_rollins_mag";
				player addPrimaryWeaponItem "optic_Aco";
				player addweapon "hgun_Pistol_heavy_01_F";
				player addItem "optic_MRD";
				player addItem "muzzle_snds_acp";
				player addItemToVest "11Rnd_45ACP_Mag";
				player addMagazine "11Rnd_45ACP_Mag";
				player addItemToVest "11Rnd_45ACP_Mag";
				EPOCH_playerCrypto = 100;
				
			};
		}];
		waitUntil {_player != player};
	};
};