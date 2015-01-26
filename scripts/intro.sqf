showCinemaBorder true;

_cam = "camera" camCreate [-57683.84,23404.52,-75674.58];
_cam cameraEffect ["internal","BACK"];
_cam camSetPos [-57683.84,23404.52,-75674.58];
_cam camsetFov 0.700;
_cam camCommit 0;

//playMusic "intro";



_cam camPrepareTarget [-57683.84,23404.52,-75674.58];
_cam camPreparePos [5042.66,5886.55,1.64];
_cam camPrepareFOV 0.700;
_cam camCommitPrepared 5;
waitUntil {camCommitted _cam};


_cam camPrepareTarget [-90773.70,32645.66,-9956.19];
_cam camPreparePos [5041.23,5886.86,1.60];
_cam camPrepareFOV 0.700;
_cam camCommitPrepared 1;
waitUntil {camCommitted _cam};

TitleRsc ["titre1","Plain"];


_cam camPrepareTarget [-67494.31,-62168.84,-9957.12];
_cam camPreparePos [5038.39,5917.93,1.45];
_cam camPrepareFOV 0.700;
_cam camCommitPrepared 5;
waitUntil {camCommitted _cam};

TitleRsc ["titre2","Plain"];


_cam camPrepareTarget [97009.73,-17563.09,-20650.42];
_cam camPreparePos [1876.48,5307.58,3.53];
_cam camPrepareFOV 0.700;
_cam camCommitPrepared 3;
waitUntil {camCommitted _cam};



_cam camPrepareTarget [66597.52,78646.28,-20651.38];
_cam camPreparePos [1880.43,5263.20,3.43];
_cam camPrepareFOV 0.700;
_cam camCommitPrepared 4;
waitUntil {camCommitted _cam};

titleFadeOut 5;


_cam camPrepareTarget [-70152.70,72177.98,-17941.76];
_cam camPreparePos [1967.64,5270.88,3.70];
_cam camPrepareFOV 0.700;
_cam camCommitPrepared 1;
waitUntil {camCommitted _cam};



_cam camPrepareTarget [97601.52,-18893.55,-27288.51];
_cam camPreparePos [4203.86,3830.47,70.69];
_cam camPrepareFOV 0.700;
_cam camCommitPrepared 5;
waitUntil {camCommitted _cam};



_cam camPrepareTarget [3096.86,98859.90,-30644.97];
_cam camPreparePos [4363.26,3755.71,10.16];
_cam camPrepareFOV 0.700;
_cam camCommitPrepared 3;
waitUntil {camCommitted _cam};



_cam camPrepareTarget [-69939.83,-52393.86,-36031.36];
_cam camPreparePos [4378.93,3833.08,7.43];
_cam camPrepareFOV 0.700;
_cam camCommitPrepared 1;
waitUntil {camCommitted _cam};



_cam camPrepareTarget [-66153.55,-49529.27,-46460.91];
_cam camPreparePos [4363.32,3821.51,1.70];
_cam camPrepareFOV 0.700;
_cam camCommitPrepared 1;
waitUntil {camCommitted _cam};


player cameraEffect ["terminate","back"];
camDestroy _cam;