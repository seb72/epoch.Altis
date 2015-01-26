/*  scripts appelé a l'init  */
//Partie mission

[] execVM "scripts\welcome.sqf";
[] execVM "scripts\fn_statusBar.sqf";
[] execVM "txt.sqf";
[] execVM "Bakler2.sqf";
[] ExecVM "IgiLoad\IgiLoadInit.sqf";
[] execVM "sem_init.sqf";
[] execVM "indestructible.sqf";
[] execVM "respawnplayer.sqf";
[] execVM "TAA_name\TAA_name_init.sqf";

if (isDedicated) then { 
[] execVM "campkk4pi.sqf";
};


if (!isDedicated) then {
	"VEMFChatMsg" addPublicVariableEventHandler {
		systemChat ((_this select 1) select 0);
		[
			[
				[((_this select 1) select 0),"align = 'center' size = '1' font='PuristaBold'"],
				["","<br/>"],
				[((_this select 1) select 1),"align = 'center' size = '0.5'"]
			]
		] spawn BIS_fnc_typeText2;
		VEMFChatMsg = nil;
	};
};
