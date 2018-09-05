/**
 *
 * Addon: yeiijDrop
 * Author: Jason REDUX (@Yeiij)
 * Date: 18/08/2018
 * File: fn_DropPostInit.sqf
 *
 */

diag_log " |||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||| ";
diag_log " || yeiijDrop (Server): POST-INIT                               || ";
diag_log " |||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||| ";

if (hasInterface) exitWith {};

[] call YEIIJ_fnc_DropStartAddon;
