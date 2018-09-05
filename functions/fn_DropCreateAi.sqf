/**
 *
 * Addon: yeiijDrop
 * Author: Jason REDUX (@Yeiij)
 * Date: 18/08/2018
 * File: fn_DropCreateAi.sqf
 *
 */

diag_log " :::::::::::::::::::::::::::::::::::::::::::::::::: ";
diag_log " :: yeiijDrop (Server): Create Ai                :: ";
diag_log " :::::::::::::::::::::::::::::::::::::::::::::::::: ";

YEIIJ_dropMainChprGrp = createGroup WEST; // NATO group

// configure the main chopper PILOT
YEIIJ_dropMainChprPlt = YEIIJ_dropMainChprGrp createUnit [YEIIJ_dropPilotCls, YEIIJ_dropDefPos, [], 0, "FORM"];
YEIIJ_dropMainChprPlt enableDynamicSimulation false;
YEIIJ_dropMainChprPlt allowDamage false;
[YEIIJ_dropMainChprPlt] allowGetIn true;
YEIIJ_dropMainChprPlt assignAsDriver YEIIJ_dropMainChpr;
[YEIIJ_dropMainChprPlt] orderGetIn true;
YEIIJ_dropMainChprPlt moveInDriver YEIIJ_dropMainChpr;

// configure the group
YEIIJ_dropMainChprGrp setBehaviour "CARELESS"; // dont worrie
YEIIJ_dropMainChprGrp setCombatMode "BLUE"; // do not fire
YEIIJ_dropMainChprGrp setSpeedMode "FULL"; // run as fast as you can
YEIIJ_dropMainChprGrp allowFleeing 0; // don't be afraid

YEIIJ_dropMainChprGrp deleteGroupWhenEmpty true; // meh
