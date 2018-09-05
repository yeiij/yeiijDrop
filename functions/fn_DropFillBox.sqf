/**
 *
 * Addon: yeiijDrop
 * Author: Jason REDUX (@Yeiij)
 * Date: 18/08/2018
 * File: fn_DropFillBox.sqf
 *
 */

diag_log " ::::::::::::::::::::::::::::::::::::::::::::::::: ";
diag_log " :: yeiijDrop (Server): Fill Box                :: ";
diag_log " ::::::::::::::::::::::::::::::::::::::::::::::::: ";

// define temporal vars
private _YEIIJ_dropWepAmnt = 0;
private _YEIIJ_dropAmoAmnt = 0;
private _YEIIJ_dropWeapons = [];

// select weapons to fill the box and group them in array
for "_i" from 1 to YEIIJ_dropMaxWepTyps do {
    _YEIIJ_dropWeapons pushBack (selectRandom YEIIJ_dropWeapons);
};

// fill the box with the previous selected weeapons
{
    // randomize ammount of each weapons based on config file
    _YEIIJ_dropWepAmnt = round(random YEIIJ_dropMaxWepAmnt);
    YEIIJ_dropBox addWeaponCargoGlobal [_x,_YEIIJ_dropWepAmnt];
} forEach _YEIIJ_dropWeapons;

// fill the box with magazines
{
    // randomize ammount of each magazine based on config file
    _YEIIJ_dropAmoAmnt = round(random YEIIJ_dropMaxAmoAmnt);
    YEIIJ_dropBox addMagazineCargoGlobal [_x,_YEIIJ_dropAmoAmnt];
} forEach YEIIJ_dropAmmo;
// let's clear the weapons array (no sense but let me try)
_YEIIJ_dropWeapons = [];
