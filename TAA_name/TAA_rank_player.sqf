/*****************************************************************************************************************
*@Version: V 3.3	Display HUD																					 *
*																												 *
*@author : 																										 *
*	Black puma (Br.) don't remove this line																		 *
*@description :																									 *
*	allow to change the rank in game 																		     *
*	/!\ run only for clients																					 * 
******************************************************************************************************************/
_uid = getPlayerUID player;

if(_uid in TAA_PRIVATE_UID)then{
	player setRank "PRIVATE";
	player groupChat format["%1 %2",localize "STR_TAA_PROMOTED_AS",localize "STR_TAA_PROMOTED_AS_PRIVATE"];

};
if(_uid in TAA_CORPORAL_UID)then{
	player setRank "CORPORAL";
	player groupChat format["%1 %2",localize "STR_TAA_PROMOTED_AS",localize "STR_TAA_PROMOTED_AS_Corporal"];	

};
if(_uid in TAA_SERGEANT_UID)then{
	player setRank "SERGEANT";
	player groupChat format["%1 %2",localize "STR_TAA_PROMOTED_AS",localize "STR_TAA_PROMOTED_AS_Sergeant"];	

};
if(_uid in TAA_LIEUTENANT_UID)then{
	player setRank "LIEUTENANT";
	player groupChat format["%1 %2",localize "STR_TAA_PROMOTED_AS",localize "STR_TAA_PROMOTED_AS_Lieutenant"];	

};
if(_uid in TAA_CAPTAIN_UID)then{
	player setRank "CAPTAIN";
	player groupChat format["%1 %2",localize "STR_TAA_PROMOTED_AS",localize "STR_TAA_PROMOTED_AS_Captain"];	

};
if(_uid in TAA_MAJOR_UID)then{
	player setRank "MAJOR";
	player groupChat format["%1 %2",localize "STR_TAA_PROMOTED_AS",localize "STR_TAA_PROMOTED_AS_Major"];	

};
if(_uid in TAA_COLONEL_UID)then{
	player setRank "COLONEL";
	player groupChat format["%1 %2",localize "STR_TAA_PROMOTED_AS",localize "STR_TAA_PROMOTED_AS_Colonel"];	

};