/**
 *
 * Addon: yeiijDrop
 * Author: Jason REDUX (@Yeiij)
 * Date: 18/08/2018
 * File: fn_DropCleanTsk.sqf
 *
 */

diag_log " :::::::::::::::::::::::::::::::::::::::::::::::::: ";
diag_log " :: yeiijDrop (Server): Clean Task               :: ";
diag_log " :::::::::::::::::::::::::::::::::::::::::::::::::: ";

["YEIIJ_dropMainChprTrgt_COP", "SUCCEEDED", true] call BIS_fnc_taskSetState;
["YEIIJ_dropMainChprTrgt_CIV", "SUCCEEDED", true] call BIS_fnc_taskSetState;

sleep 1;

"YEIIJ_dropMainChprTrgt_COP" call BIS_fnc_taskCompleted;
"YEIIJ_dropMainChprTrgt_CIV" call BIS_fnc_taskCompleted;

sleep 5;

["YEIIJ_dropMainChprTrgt_COP", WEST] call BIS_fnc_deleteTask;
["YEIIJ_dropMainChprTrgt_CIV", CIVILIAN] call BIS_fnc_deleteTask;
