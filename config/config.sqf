/**
 *
 * Addon: yeiijDrop
 * Author: Jason REDUX (@Yeiij)
 * Date: 18/08/2018
 * File: config.sqf
 *
 */

diag_log " ::::::::::::::::::::::::::::::::::::::::::::::::: ";
diag_log " :: yeiijDrop (Server): Config Loaded          :: ";
diag_log " ::::::::::::::::::::::::::::::::::::::::::::::::: ";
// define when the mission runs or not
YEIIJ_dropRun = true; // def true
// define the usage of debugging markers
YEIIJ_dropDbgMkr = true; // def false
// define the time before start the first drop
YEIIJ_dropWait = 600; // def 600, 10 minutes
// define the time before delete the chopper/unit after drops
YEIIJ_dropWaitDltChpr = 60; // def 60, 1 minute
// define time to finish the event / delete the box
YEIIJ_dropEventTime = 900; // def 900, 15 minutes
// define the time between drops
YEIIJ_dropDelay = 7200; // def 7200 secs, every 2 hours
// define the clas used for the main chopper
YEIIJ_dropMainChprCls = "B_Heli_Attack_01_dynamicLoadout_F"; // def Blackfoot
// define the class for the carried container/box
YEIIJ_dropContainerCls = "IG_supplyCrate_F"; // def Supply Box FIA
// define the class for the parachute
YEIIJ_dropParachuteCls = "B_Parachute_02_F"; // def Cargo Parachute
// define the pilot class
YEIIJ_dropPilotCls = "B_Helipilot_F"; // def NATO Helicopter Pilot
// define the smoke class
YEIIJ_dropSmokeCls = "SmokeShellBlue"; // def NATO blue smoke
// define the chemlight class
YEIIJ_dropChemlightCls = "Chemlight_blue"; // def NATO blue chemlight
// default pos
YEIIJ_dropDefPos = [0,0,0]; // def [0,0,0]
// first wreck Pos
YEIIJ_dropPos = [0,0,0]; // def [0,0,0]
// define the drop possitions
YEIIJ_dropPossitions = [
    [6037.15,12780.1,0],
    [10021.6,12021.1,0],
    [19971.6,18371,0],
    [13655.4,19936.5,0],
    [6975.16,18930.7,0]
];
// maximum weapon types per box
YEIIJ_dropMaxWepTyps = 10; // def 10
// maximum weapon ammount per box (each weapon)
YEIIJ_dropMaxWepAmnt = 5; // def 5
// maximum ammo ammount per box
YEIIJ_dropMaxAmoAmnt = 25; // def 25
// weapons array
YEIIJ_dropWeapons = [
    "hgun_ACPC2_F", // ACP-C2 .45 ACP
    "hgun_P07_F", // P07 9 mm
    "hgun_Pistol_heavy_01_F", // 4-five .45 ACP
    "hgun_Pistol_heavy_02_F", // Zubr .45 ACP
    "hgun_Rook40_F" // Rook-40 9 mm
];
// ammo array
YEIIJ_dropAmmo = [
    "9Rnd_45ACP_Mag", // .45 ACP 9Rnd Mag
    "16Rnd_9x21_Mag", // 9 mm 16Rnd Mag
    "11Rnd_45ACP_Mag", // .45 ACP 11Rnd Mag
    "6Rnd_45ACP_Cylinder" // .45 ACP 6Rnd Cylinder
];
