/**
 *
 * Addon: yeiijDrop
 * Author: Jason REDUX (@Yeiij)
 * Date: 18/08/2018
 * File: fn_DropCreateTsk.sqf
 *
 */

diag_log " :::::::::::::::::::::::::::::::::::::::::::::::::: ";
diag_log " :: yeiijDrop (Server): Create Task              :: ";
diag_log " :::::::::::::::::::::::::::::::::::::::::::::::::: ";

[WEST, ["YEIIJ_dropMainChprTrgt_COP"], ["", "", ""], objNull, false, 1, true, "heli", true] call BIS_fnc_taskCreate;
["YEIIJ_dropMainChprTrgt_COP", ["Airdrop en camino", "Defiende el Airdop - ZONA RDM", "YEIIJ_dropMainChprTrgt_COP"] ] call BIS_fnc_taskSetDescription;
["YEIIJ_dropMainChprTrgt_COP", [YEIIJ_dropMainChpr,true] ] call BIS_fnc_taskSetDestination;
["YEIIJ_dropMainChprTrgt_COP", "ASSIGNED", true] call BIS_fnc_taskSetState;

[CIVILIAN, ["YEIIJ_dropMainChprTrgt_CIV"], ["", "", ""], objNull, false, 1, true, "container", true] call BIS_fnc_taskCreate;
["YEIIJ_dropMainChprTrgt_CIV", ["Airdrop en camino", "Encuentra armas grátis - ZONA RDM", "YEIIJ_dropMainChprTrgt_COP"] ] call BIS_fnc_taskSetDescription;
["YEIIJ_dropMainChprTrgt_CIV", [YEIIJ_dropMainChpr,true] ] call BIS_fnc_taskSetDestination;
["YEIIJ_dropMainChprTrgt_CIV", "ASSIGNED", true] call BIS_fnc_taskSetState;
