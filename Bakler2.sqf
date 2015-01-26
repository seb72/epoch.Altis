//Created and modificated by Bakler2

hint "Loaded";


	[]spawn {
	[] spawn {sleep 2;
	_Hint__tittle1 = "<t color='#22FF6D' size='3.0' align='center'>Serveur Apocalypse Squadron</t><br/>";
	_Hint__props = "<t color='#FFFFFF' size='1.5' align='center'>Arma 3 Epoch Mod</t><br/>";
	_Hint__f1 = "<t color='#F2021A' size='1.5' align='center'>Version 0.2.5.2</t><br/>";
	_Hint__keybizzle = "<t color='#ECD000' size='1.5' align='center'>TS3: 5.135.154.16</t><br/>";
	_Hint__keyswag = "<t color='#FFFFFF' size='1.5' align='center'></t><br/>";
	_Hint__Mr = "<t color='#FFFFFF' size='1.5' align='center'> </t><br/>";
	hint parseText(_Hint__tittle1 + _Hint__Mr + _Hint__props + _Hint__f1 + _Hint__Mr + _Hint__keyswag + _Hint__keybizzle);};};