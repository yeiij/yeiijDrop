/**
 *
 * Addon: yeiijDrop
 * Author: Jason REDUX (@Yeiij)
 * Date: 18/08/2018
 * File: fn_DropStartAddon.sqf
 *
 */

diag_log " :::::::::::::::::::::::::::::::::::::::::::::::::: ";
diag_log " :: yeiijDrop (Server): Starting Addon           :: ";
diag_log " :::::::::::::::::::::::::::::::::::::::::::::::::: ";

[] spawn {
    while {YEIIJ_dropRun} do {

        sleep YEIIJ_dropWait;

        [] call YEIIJ_fnc_DropSelectPossition;

        if (!YEIIJ_dropRun) exitWith {
            diag_log " :::::::::::::::::::::::::::::::::::::::::::::::::: ";
            diag_log " :: yeiijDrop (Server): FINISHED                 :: ";
            diag_log " :::::::::::::::::::::::::::::::::::::::::::::::::: ";
        };

        systemChat "Evento: Airdrop en camino";

        [] call YEIIJ_fnc_DropCreateVehicles;

        [] call YEIIJ_fnc_DropFillBox;

        [] call YEIIJ_fnc_DropCreateAi;

        [] call YEIIJ_fnc_DropCreateTsk;

        [] call YEIIJ_fnc_DropAddWaypoint;

        [] call YEIIJ_fnc_DropDrop;

        [] call YEIIJ_fnc_DropCleanTsk;

        sleep YEIIJ_dropWaitDltChpr;

        [] call YEIIJ_fnc_DropCleanVehicles;

        sleep YEIIJ_dropEventTime;

        detach YEIIJ_dropChemlight;
        deleteVehicle YEIIJ_dropChemlight;
        deleteVehicle YEIIJ_dropBox;
        deleteMarker YEIIJ_dropMkr;

        if (YEIIJ_dropDbgMkr) then {
            deleteMarker YEIIJ_dropBoxMkr;
        };

        sleep YEIIJ_dropDelay;
    };
};
