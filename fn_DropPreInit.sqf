/**
 *
 * Addon: yeiijDrop
 * Author: Jason REDUX (@Yeiij)
 * Date: 18/08/2018
 * File: fn_DropPreInit.sqf
 *
 */

diag_log " |||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||| ";
diag_log " || yeiijDrop (Server): PRE-INIT                                || ";
diag_log " |||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||| ";

if (hasInterface) exitWith {};

call compile preprocessFileLineNumbers "yeiijDrop\config\config.sqf";
