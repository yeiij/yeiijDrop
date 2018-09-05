/**
 *
 * Addon: yeiijDrop
 * Author: Jason REDUX (@Yeiij)
 * Date: 18/08/2018
 * File: fn_DropDrop.sqf
 *
 */

diag_log " :::::::::::::::::::::::::::::::::::::::::::::::::: ";
diag_log " :: yeiijDrop (Server): Drop                     :: ";
diag_log " :::::::::::::::::::::::::::::::::::::::::::::::::: ";

// configure the parachute
YEIIJ_dropChute = YEIIJ_dropParachuteCls createVehicle YEIIJ_dropDefPos;
YEIIJ_dropMainChpr enableDynamicSimulation false;
YEIIJ_dropChute allowDamage false;
YEIIJ_dropChute setPos (position YEIIJ_dropMainChpr);

detach YEIIJ_dropBox;
YEIIJ_dropBox attachTo [YEIIJ_dropChute, [0,0,0]];

YEIIJ_dropSmoke = YEIIJ_dropSmokeCls createVehicle YEIIJ_dropDefPos;
YEIIJ_dropSmoke enableDynamicSimulation false;
YEIIJ_dropSmoke allowDamage false;
YEIIJ_dropSmoke attachTo [YEIIJ_dropBox, [0,0,0.4]];

YEIIJ_dropChemlight = YEIIJ_dropChemlightCls createVehicle YEIIJ_dropDefPos;
YEIIJ_dropChemlight enableDynamicSimulation false;
YEIIJ_dropChemlight allowDamage false;
YEIIJ_dropChemlight attachTo [YEIIJ_dropBox, [0,0,0.45]];

waitUntil { ((getPosATL YEIIJ_dropBox) select 2) < 5 };
detach YEIIJ_dropBox;

YEIIJ_dropSmoke2 = YEIIJ_dropSmokeCls createVehicle [0,0,0.5];
YEIIJ_dropSmoke2 enableDynamicSimulation false;
YEIIJ_dropSmoke2 allowDamage false;
YEIIJ_dropSmoke2 attachTo [YEIIJ_dropBox, [0,0,0.4]];

if (YEIIJ_dropDbgMkr) then {
    YEIIJ_dropBoxMkr = "YEIIJ_dropBoxMkr";
    createMarker [YEIIJ_dropBoxMkr, [0,0]];
    YEIIJ_dropBoxMkr setMarkerPos (position YEIIJ_dropBox);
    YEIIJ_dropBoxMkr setMarkerShape "ICON";
    YEIIJ_dropBoxMkr setMarkerType "mil_objective";
    YEIIJ_dropBoxMkr setMarkerColor "colorOPFOR";
    YEIIJ_dropBoxMkr setMarkerDir 0;
    YEIIJ_dropBoxMkr setMarkerSize [1,1];
    YEIIJ_dropBoxMkr setMarkerAlpha 1;
};
