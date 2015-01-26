/*
	File: initServer.sqf
*/

if (isServer) then {
	[] ExecVM "\VEMF\init.sqf";
	[] call compile PreprocessFileLineNumbers "Events\init.sqf";
};
