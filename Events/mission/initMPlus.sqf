/*
	random events/missions
*/

_minTime = 1*60; //5 minutes 
_maxTime = 2*60; //30 minutes

_sleepTime = (random (_maxTime - _minTime)) + _minTime;
sleep _sleepTime;

_n1 = floor(random 5);		

switch (_n1) do
{
	case 0:
		{
			execVM "Events\mission\mission\bHeliCrash.sqf";
		};
	case 1:
		{
			execVM "Events\mission\mission\supplyVanCrash.sqf";
		};
	case 2:
		{
			execVM "Events\mission\mission\bPlaneCrash.sqf";
		};
	case 3:
		{
			execVM "Events\mission\mission\bCamp.sqf";
		};
	case 4:
		{
			execVM "Events\mission\mission\bDevice.sqf";
		};
	case 5:
		{
			execVM "Events\mission\mission\bHeliCrash.sqf";
		};
};


