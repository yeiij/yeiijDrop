/**
 *
 * Addon: yeiijDrop
 * Author: Jason REDUX (@Yeiij)
 * Date: 18/08/2018
 * File: fn_DropSelectPosition.sqf
 *
 */

diag_log " ::::::::::::::::::::::::::::::::::::::::::::::::: ";
diag_log " :: yeiijDrop (Server): Select Possition        :: ";
diag_log " ::::::::::::::::::::::::::::::::::::::::::::::::: ";

// check if there are possitions to spawn the crash
if (count(YEIIJ_dropPossitions) < 1) exitWith {
    YEIIJ_dropRun = false;
};
// select a random position from positions array in config file
private _YEIIJ_dropRndmPos = selectRandom YEIIJ_dropPossitions;
// find a safe position to avoid bugs at spawn (keep dreaming)
private _YEIIJ_crashSafePos = [_YEIIJ_dropRndmPos, 5, 10, 5, 0, 0.1, 0, [], [_YEIIJ_dropRndmPos,_YEIIJ_dropRndmPos]] call BIS_fnc_findSafePos;
YEIIJ_dropPos = _YEIIJ_crashSafePos;

// delete the used position this will avoid repeating possitions
YEIIJ_dropPossitions deleteAt (YEIIJ_dropPossitions find _YEIIJ_dropRndmPos);

// MARKER
YEIIJ_dropMkr = "YEIIJ_dropPosMkr";
createMarker [YEIIJ_dropMkr, [0,0]];
YEIIJ_dropMkr setMarkerPos YEIIJ_dropPos;
YEIIJ_dropMkr setMarkerBrush "DIAGGRID";
YEIIJ_dropMkr setMarkerColor "colorBLUFOR";
YEIIJ_dropMkr setMarkerDir 0;
YEIIJ_dropMkr setMarkerShape "ELLIPSE";
YEIIJ_dropMkr setMarkerSize [1000, 1000];
YEIIJ_dropMkr setMarkerAlpha 0.75;
