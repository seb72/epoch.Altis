diag_log ["##Spawn PNJ Events/Missions##"];
_n1 = floor(random 2);				
if (_n1 == 0) then
	{

			_centerpos = _this select 0;
			_unit = objNull;


			_unitGroup = createGroup RESISTANCE;
			_unitGroup setBehaviour "AWARE";
			_unitGroup setCombatMode "RED";

			_unit1 = _unitGroup createUnit ["I_Soldier_EPOCH", _centerpos, [], 0, "CAN_COLLIDE"];
			_unit2 = _unitGroup createUnit ["I_Soldier_EPOCH", _centerpos, [], 0, "CAN_COLLIDE"];
			_unit3 = _unitGroup createUnit ["I_Soldier_EPOCH", _centerpos, [], 0, "CAN_COLLIDE"];
			_unit4 = _unitGroup createUnit ["I_Soldier_EPOCH", _centerpos, [], 0, "CAN_COLLIDE"];

			_unit5 = _unitGroup createUnit ["I_Soldier_EPOCH", _centerpos, [], 0, "CAN_COLLIDE"];
			_unit6 = _unitGroup createUnit ["I_Soldier_EPOCH", _centerpos, [], 0, "CAN_COLLIDE"];
			_unit7 = _unitGroup createUnit ["I_Soldier_EPOCH", _centerpos, [], 0, "CAN_COLLIDE"];
			_unit8 = _unitGroup createUnit ["I_Soldier_EPOCH", _centerpos, [], 0, "CAN_COLLIDE"];
			_unit9 = _unitGroup createUnit ["I_Soldier_EPOCH", _centerpos, [], 0, "CAN_COLLIDE"];


			_unit1 setVariable["LASTLOGOUT_EPOCH",99999999];
			_unit2 setVariable["LASTLOGOUT_EPOCH",99999999];
			_unit3 setVariable["LASTLOGOUT_EPOCH",99999999];
			_unit4 setVariable["LASTLOGOUT_EPOCH",99999999];
			_unit5 setVariable["LASTLOGOUT_EPOCH",99999999];
			_unit6 setVariable["LASTLOGOUT_EPOCH",99999999];
			_unit7 setVariable["LASTLOGOUT_EPOCH",99999999];
			_unit8 setVariable["LASTLOGOUT_EPOCH",99999999];
			_unit9 setVariable["LASTLOGOUT_EPOCH",99999999];

			_unit setSkill 0.6;
			_unit setRank "Private";
			_unit enableAI "TARGET";
			_unit enableAI "AUTOTARGET";
			_unit enableAI "MOVE";
			_unit enableAI "ANIM";
			_unit enableAI "FSM";

			//Sniper
			_unit1 setRank "Private";
			_unit1 enableAI "TARGET";
			_unit1 enableAI "AUTOTARGET";
			_unit1 enableAI "MOVE";
			_unit1 enableAI "ANIM";
			_unit1 enableAI "FSM";
			removeUniform _unit1;
			removeHeadgear _unit1;
			removeAllWeapons _unit1;
			_unit1 forceAddUniform  "U_ghillie1_uniform";
			_unit1 addVest "V_6_EPOCH";
			_unit1 addHeadgear "H_36_EPOCH";
			_unit1 addMagazines ["11Rnd_45ACP_Mag", 3];
			_unit1 addMagazines ["20Rnd_762x51_Mag", 4];
			_unit1 addWeapon "M14Grn_EPOCH";
			_unit1 addPrimaryWeaponItem "optic_SOS";
			_unit1 addWeapon "hgun_Pistol_heavy_01_F";
			_unit1 addHandgunItem "optic_MRD";
			_unit1 setSkill 0.7;
			//Rifleman
			_unit2 setRank "Private";
			_unit2 enableAI "TARGET";
			_unit2 enableAI "AUTOTARGET";
			_unit2 enableAI "MOVE";
			_unit2 enableAI "ANIM";
			_unit2 enableAI "FSM";
			removeUniform _unit2;
			removeHeadgear _unit2;
			removeAllWeapons _unit2;
			_unit2 forceAddUniform  "U_B_CombatUniform_mcam";
			_unit2 addVest "V_7_EPOCH";
			_unit2 addHeadgear "H_37_EPOCH";
			_unit2 addMagazines ["11Rnd_45ACP_Mag", 3];
			_unit2 addMagazines ["30Rnd_556x45_Stanag", 4];
			_unit2 addWeapon "arifle_Mk20_GL_F";
			_unit2 addPrimaryWeaponItem "optic_Arco";
			_unit2 addWeapon "hgun_Pistol_heavy_01_F";
			_unit2 addMagazines ["1Rnd_HE_Grenade_shell", 2];
			_unit2 setSkill 0.7;
			//Hunter
			_unit3 setRank "Private";
			_unit3 enableAI "TARGET";
			_unit3 enableAI "AUTOTARGET";
			_unit3 enableAI "MOVE";
			_unit3 enableAI "ANIM";
			_unit3 enableAI "FSM";
			removeUniform _unit3;
			removeHeadgear _unit3;
			removeAllWeapons _unit3;
			_unit3 forceAddUniform "U_C_HunterBody_grn";
			_unit3 addVest "V_10_EPOCH";
			_unit3 addHeadgear "H_40_EPOCH";
			_unit3 addMagazines ["30Rnd_556x45_Stanag", 4];
			_unit3 addWeapon "arifle_Mk20_GL_F";
			_unit3 addPrimaryWeaponItem "optic_Arco";          
			_unit3 setSkill 0.5;

			//Diver
			_unit4 setRank "Private";
			_unit4 enableAI "TARGET";
			_unit4 enableAI "AUTOTARGET";
			_unit4 enableAI "MOVE";
			_unit4 enableAI "ANIM";
			_unit4 enableAI "FSM";
			removeUniform _unit4;
			removeHeadgear _unit4;
			removeAllWeapons _unit4;
			_unit4 forceAddUniform  "U_NikosAgedBody";
			_unit4 addVest "V_Press_F";
			_unit4 addHeadgear "H_Shemag_olive_hs";
			_unit4 addMagazines ["30Rnd_556x45_Stanag", 4];
			_unit4 addWeapon "arifle_SDAR_F";
			_unit4 addMagazines ["1Rnd_HE_Grenade_shell", 1];
			_unit4 setSkill 0.6;

			//Armed Civ
			_unit5 setRank "Private";
			_unit5 enableAI "TARGET";
			_unit5 enableAI "AUTOTARGET";
			_unit5 enableAI "MOVE";
			_unit5 enableAI "ANIM";
			_unit5 enableAI "FSM";
			removeUniform _unit5;
			removeHeadgear _unit5;
			removeAllWeapons _unit5;
			_unit5 forceAddUniform  "U_NikosBody";
			_unit5 addVest "V_40_EPOCH";
			_unit5 addHeadgear "H_34_EPOCH";
			_unit5 addMagazines ["11Rnd_45ACP_Mag", 3];
			_unit5 addMagazines ["FAK",2];
			_unit5 addMagazines ["CookedGoat_EPOCH",4];
			_unit5 addMagazines ["ItemSodaMocha",4];
			_unit5 addWeapon "hgun_Pistol_heavy_01_F";
			_unit5 setSkill 0.5;
			//hunter
			_unit6 setRank "Private";
			_unit6 enableAI "TARGET";
			_unit6 enableAI "AUTOTARGET";
			_unit6 enableAI "MOVE";
			_unit6 enableAI "ANIM";
			_unit6 enableAI "FSM";
			removeUniform _unit6;
			removeHeadgear _unit6;
			removeAllWeapons _unit6;
			_unit6 forceAddUniform "U_C_HunterBody_grn";
			_unit6 addVest "V_10_EPOCH";
			_unit6 addHeadgear "H_40_EPOCH";
			_unit6 addMagazines ["30Rnd_556x45_Stanag", 4];
			_unit6 addWeapon "arifle_Mk20_GL_F";
			_unit6 addPrimaryWeaponItem "optic_Arco";          
			_unit6 setSkill 0.5;
			//hunter
			_unit7 setRank "Private";
			_unit7 enableAI "TARGET";
			_unit7 enableAI "AUTOTARGET";
			_unit7 enableAI "MOVE";
			_unit7 enableAI "ANIM";
			_unit7 enableAI "FSM";
			removeUniform _unit7;
			removeHeadgear _unit7;
			removeAllWeapons _unit7;
			_unit7 forceAddUniform "U_C_HunterBody_grn";
			_unit7 addVest "V_10_EPOCH";
			_unit7 addHeadgear "H_40_EPOCH";
			_unit7 addMagazines ["30Rnd_556x45_Stanag", 4];
			_unit7 addWeapon "arifle_Mk20_GL_F";
			_unit7 addPrimaryWeaponItem "optic_Arco";          
			_unit7 setSkill 0.5;
			//hunter
			_unit8 setRank "Private";
			_unit8 enableAI "TARGET";
			_unit8 enableAI "AUTOTARGET";
			_unit8 enableAI "MOVE";
			_unit8 enableAI "ANIM";
			_unit8 enableAI "FSM";
			removeUniform _unit8;
			removeHeadgear _unit8;
			removeAllWeapons _unit8;
			_unit8 forceAddUniform "U_C_HunterBody_grn";
			_unit8 addVest "V_10_EPOCH";
			_unit8 addHeadgear "H_40_EPOCH";
			_unit8 addMagazines ["30Rnd_556x45_Stanag", 4];
			_unit8 addWeapon "arifle_Mk20_GL_F";
			_unit8 addPrimaryWeaponItem "optic_Arco";          
			_unit8 setSkill 0.5;
			//hunter
			_unit9 setRank "Private";
			_unit9 enableAI "TARGET";
			_unit9 enableAI "AUTOTARGET";
			_unit9 enableAI "MOVE";
			_unit9 enableAI "ANIM";
			_unit9 enableAI "FSM";
			removeUniform _unit9;
			removeHeadgear _unit9;
			removeAllWeapons _unit9;
			_unit9 forceAddUniform "U_C_HunterBody_grn";
			_unit9 addVest "V_10_EPOCH";
			_unit9 addHeadgear "H_40_EPOCH";
			_unit9 addMagazines ["30Rnd_556x45_Stanag", 4];
			_unit9 addWeapon "arifle_Mk20_GL_F";
			_unit9 addPrimaryWeaponItem "optic_Arco";          
			_unit9 setSkill 0.5;


			_unitGroup selectLeader _unit1;
		};
		if (_n1 == 1) then
		{

			_centerpos = _this select 0;
			_unit = objNull;


			_unitGroup = createGroup RESISTANCE;
			_unitGroup setBehaviour "AWARE";
			_unitGroup setCombatMode "RED";

			_unit2 = _unitGroup createUnit ["I_Soldier_EPOCH", _centerpos, [], 0, "CAN_COLLIDE"];
			_unit3 = _unitGroup createUnit ["I_Soldier_EPOCH", _centerpos, [], 0, "CAN_COLLIDE"];
			_unit5 = _unitGroup createUnit ["I_Soldier_EPOCH", _centerpos, [], 0, "CAN_COLLIDE"];
			_unit6 = _unitGroup createUnit ["I_Soldier_EPOCH", _centerpos, [], 0, "CAN_COLLIDE"];
			_unit8 = _unitGroup createUnit ["I_Soldier_EPOCH", _centerpos, [], 0, "CAN_COLLIDE"];
			


			
			_unit2 setVariable["LASTLOGOUT_EPOCH",99999999];
			_unit3 setVariable["LASTLOGOUT_EPOCH",99999999];
			_unit5 setVariable["LASTLOGOUT_EPOCH",99999999];
			_unit6 setVariable["LASTLOGOUT_EPOCH",99999999];
			_unit8 setVariable["LASTLOGOUT_EPOCH",99999999];
			
			_unit setSkill 0.6;
			_unit setRank "Private";
			_unit enableAI "TARGET";
			_unit enableAI "AUTOTARGET";
			_unit enableAI "MOVE";
			_unit enableAI "ANIM";
			_unit enableAI "FSM";

			
			//Rifleman
			_unit2 setRank "Private";
			_unit2 enableAI "TARGET";
			_unit2 enableAI "AUTOTARGET";
			_unit2 enableAI "MOVE";
			_unit2 enableAI "ANIM";
			_unit2 enableAI "FSM";
			removeUniform _unit2;
			removeHeadgear _unit2;
			removeAllWeapons _unit2;
			_unit2 forceAddUniform  "U_B_CombatUniform_mcam";
			_unit2 addVest "V_7_EPOCH";
			_unit2 addHeadgear "H_37_EPOCH";
			_unit2 addMagazines ["11Rnd_45ACP_Mag", 3];
			_unit2 addMagazines ["30Rnd_556x45_Stanag", 4];
			_unit2 addWeapon "arifle_Mk20_GL_F";
			_unit2 addPrimaryWeaponItem "optic_Arco";
			_unit2 addWeapon "hgun_Pistol_heavy_01_F";
			_unit2 addMagazines ["1Rnd_HE_Grenade_shell", 2];
			_unit2 setSkill 0.7;
			//Hunter
			_unit3 setRank "Private";
			_unit3 enableAI "TARGET";
			_unit3 enableAI "AUTOTARGET";
			_unit3 enableAI "MOVE";
			_unit3 enableAI "ANIM";
			_unit3 enableAI "FSM";
			removeUniform _unit3;
			removeHeadgear _unit3;
			removeAllWeapons _unit3;
			_unit3 forceAddUniform "U_C_HunterBody_grn";
			_unit3 addVest "V_10_EPOCH";
			_unit3 addHeadgear "H_40_EPOCH";
			_unit3 addMagazines ["30Rnd_556x45_Stanag", 4];
			_unit3 addWeapon "arifle_Mk20_GL_F";
			_unit3 addPrimaryWeaponItem "optic_Arco";          
			_unit3 setSkill 0.5;


			//Armed Civ
			_unit5 setRank "Private";
			_unit5 enableAI "TARGET";
			_unit5 enableAI "AUTOTARGET";
			_unit5 enableAI "MOVE";
			_unit5 enableAI "ANIM";
			_unit5 enableAI "FSM";
			removeUniform _unit5;
			removeHeadgear _unit5;
			removeAllWeapons _unit5;
			_unit5 forceAddUniform  "U_C_Poloshirt_salmon";
			_unit5 addVest "V_40_EPOCH";
			_unit5 addHeadgear "H_34_EPOCH";
			_unit5 addMagazines ["11Rnd_45ACP_Mag", 3];
			_unit5 addMagazines ["FAK",2];
			_unit5 addMagazines ["CookedGoat_EPOCH",4];
			_unit5 addMagazines ["ItemSodaMocha",4];
			_unit5 addWeapon "hgun_Pistol_heavy_01_F";
			_unit5 setSkill 0.5;
			//hunter
			_unit6 setRank "Private";
			_unit6 enableAI "TARGET";
			_unit6 enableAI "AUTOTARGET";
			_unit6 enableAI "MOVE";
			_unit6 enableAI "ANIM";
			_unit6 enableAI "FSM";
			removeUniform _unit6;
			removeHeadgear _unit6;
			removeAllWeapons _unit6;
			_unit6 forceAddUniform "U_C_HunterBody_grn";
			_unit6 addVest "V_10_EPOCH";
			_unit6 addHeadgear "H_40_EPOCH";
			_unit6 addMagazines ["30Rnd_556x45_Stanag", 4];
			_unit6 addWeapon "arifle_Mk20_GL_F";
			_unit6 addPrimaryWeaponItem "optic_Arco";          
			_unit6 setSkill 0.5;
			
			//hunter
			_unit8 setRank "Private";
			_unit8 enableAI "TARGET";
			_unit8 enableAI "AUTOTARGET";
			_unit8 enableAI "MOVE";
			_unit8 enableAI "ANIM";
			_unit8 enableAI "FSM";
			removeUniform _unit8;
			removeHeadgear _unit8;
			removeAllWeapons _unit8;
			_unit8 forceAddUniform "U_C_HunterBody_grn";
			_unit8 addVest "V_10_EPOCH";
			_unit8 addHeadgear "H_40_EPOCH";
			_unit8 addMagazines ["30Rnd_556x45_Stanag", 4];
			_unit8 addWeapon "arifle_Mk20_GL_F";
			_unit8 addPrimaryWeaponItem "optic_Arco";          
			_unit8 setSkill 0.5;
			

			_unitGroup selectLeader _unit2;
		};
		if (_n1 == 2) then
		{

			_centerpos = _this select 0;
			_unit = objNull;


			_unitGroup = createGroup RESISTANCE;
			_unitGroup setBehaviour "AWARE";
			_unitGroup setCombatMode "RED";

			_unit1 = _unitGroup createUnit ["I_Soldier_EPOCH", _centerpos, [], 0, "CAN_COLLIDE"];
			_unit2 = _unitGroup createUnit ["I_Soldier_EPOCH", _centerpos, [], 0, "CAN_COLLIDE"];


			_unit1 setVariable["LASTLOGOUT_EPOCH",99999999];
			_unit2 setVariable["LASTLOGOUT_EPOCH",99999999];
			_unit3 setVariable["LASTLOGOUT_EPOCH",99999999];


			_unit setSkill 0.6;
			_unit setRank "Private";
			_unit enableAI "TARGET";
			_unit enableAI "AUTOTARGET";
			_unit enableAI "MOVE";
			_unit enableAI "ANIM";
			_unit enableAI "FSM";

			//Sniper
			_unit1 setRank "Private";
			_unit1 enableAI "TARGET";
			_unit1 enableAI "AUTOTARGET";
			_unit1 enableAI "MOVE";
			_unit1 enableAI "ANIM";
			_unit1 enableAI "FSM";
			removeUniform _unit1;
			removeHeadgear _unit1;
			removeAllWeapons _unit1;
			_unit1 forceAddUniform  "U_ghillie1_uniform";
			_unit1 addVest "V_6_EPOCH";
			_unit1 addHeadgear "H_36_EPOCH";
			_unit1 addMagazines ["11Rnd_45ACP_Mag", 3];
			_unit1 addMagazines ["20Rnd_762x51_Mag", 4];
			_unit1 addWeapon "M14Grn_EPOCH";
			_unit1 addPrimaryWeaponItem "optic_SOS";
			_unit1 addWeapon "hgun_Pistol_heavy_01_F";
			_unit1 addHandgunItem "optic_MRD";
			_unit1 setSkill 0.7;
			//Rifleman
			_unit2 setRank "Private";
			_unit2 enableAI "TARGET";
			_unit2 enableAI "AUTOTARGET";
			_unit2 enableAI "MOVE";
			_unit2 enableAI "ANIM";
			_unit2 enableAI "FSM";
			removeUniform _unit2;
			removeHeadgear _unit2;
			removeAllWeapons _unit2;
			_unit2 forceAddUniform  "U_B_CombatUniform_mcam";
			_unit2 addVest "V_7_EPOCH";
			_unit2 addHeadgear "H_37_EPOCH";
			_unit2 addMagazines ["11Rnd_45ACP_Mag", 3];
			_unit2 addMagazines ["30Rnd_556x45_Stanag", 4];
			_unit2 addWeapon "arifle_Mk20_GL_F";
			_unit2 addPrimaryWeaponItem "optic_Arco";
			_unit2 addWeapon "hgun_Pistol_heavy_01_F";
			_unit2 addMagazines ["1Rnd_HE_Grenade_shell", 2];
			_unit2 setSkill 0.7;
			//Hunter
			_unit3 setRank "Private";
			_unit3 enableAI "TARGET";
			_unit3 enableAI "AUTOTARGET";
			_unit3 enableAI "MOVE";
			_unit3 enableAI "ANIM";
			_unit3 enableAI "FSM";
			removeUniform _unit3;
			removeHeadgear _unit3;
			removeAllWeapons _unit3;
			_unit3 forceAddUniform "U_C_HunterBody_grn";
			_unit3 addVest "V_10_EPOCH";
			_unit3 addHeadgear "H_40_EPOCH";
			_unit3 addMagazines ["30Rnd_556x45_Stanag", 4];
			_unit3 addWeapon "arifle_Mk20_GL_F";
			_unit3 addPrimaryWeaponItem "optic_Arco";          
			_unit3 setSkill 0.5;

			_unitGroup selectLeader _unit1;
		};