/**
 *
 * Addon: yeiijDrop
 * Author: Jason REDUX (@Yeiij)
 * Date: 18/08/2018
 * File: fn_DropCreateVehicles.sqf
 *
 */

// configure the main chopper
private _YEIIJ_posWithHeight = [((YEIIJ_dropPos select 0) + 5000), ((YEIIJ_dropPos select 1) + 5000), 500];
YEIIJ_dropMainChpr = createVehicle [YEIIJ_dropMainChprCls, _YEIIJ_posWithHeight, [], 0, "FLY"];
YEIIJ_dropMainChpr enableDynamicSimulation false;
YEIIJ_dropMainChpr allowDamage false;

// configure the box
YEIIJ_dropBox = YEIIJ_dropContainerCls createVehicle YEIIJ_dropDefPos;
YEIIJ_dropBox allowDamage false;
YEIIJ_dropBox attachTo [YEIIJ_dropMainChpr, [0,0,-5]];

// clean the box
clearItemCargoGlobal YEIIJ_dropBox;
clearMagazineCargoGlobal YEIIJ_dropBox;
clearWeaponCargoGlobal YEIIJ_dropBox;
clearBackpackCargoGlobal YEIIJ_dropBox;
