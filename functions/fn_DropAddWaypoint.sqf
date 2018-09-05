/**
 *
 * Addon: yeiijDrop
 * Author: Jason REDUX (@Yeiij)
 * Date: 18/08/2018
 * File: fn_DropAddWaypoint.sqf
 *
 */

diag_log " :::::::::::::::::::::::::::::::::::::::::::::::::: ";
diag_log " :: yeiijDrop (Server): Add Waypoint             :: ";
diag_log " :::::::::::::::::::::::::::::::::::::::::::::::::: ";

private _YEIIJ_wpWithHeight = [YEIIJ_dropPos select 0, YEIIJ_dropPos select 1, 250];
private _YEIIJ_wpEndWithHeight = [((YEIIJ_dropPos select 0) - 2500), ((YEIIJ_dropPos select 1) - 2500), 250];
YEIIJ_dropMainChprGrp addWaypoint [_YEIIJ_wpWithHeight, 0]; // where to go
YEIIJ_dropMainChprGrp addWaypoint [_YEIIJ_wpEndWithHeight, 1]; // where to go at the end
[YEIIJ_dropMainChprGrp, 2] setWaypointType "MOVE"; // MEHH

waitUntil { (YEIIJ_dropPos distance YEIIJ_dropMainChpr) < 275 };
