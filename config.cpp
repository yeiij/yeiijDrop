/**
 *
 * Addon: yeiijDrop
 * Author: Jason REDUX (@Yeiij)
 * Date: 18/08/2018
 * File: config.cpp
 *
 */

class CfgPatches
{
	class YeiijDrop
	{
		name = "Yeiij Drop Addon";
		units[] = {};
		weapons[] = {};
		requiredVersion = 1.0;
		requiredAddons[] = {};
		author = "Yeiij";
		authors[] = {"Yeiij"};
		url = "https://github.com/yeiij";
		version = "1.0";
		versionStr = "1.0";
		versionAr[] = {1,0};
	};
};

class CfgFunctions
{
	class YeiijDrop
	{
		tag = "YEIIJ";
		class initDrop
		{
			file = "yeiijDrop";
			class DropPreInit { preInit = 1; };
			class DropPostInit { postInit = 1; };
			class DropStartAddon {};
		};
		class compilesDrop
		{
			file = "yeiijDrop\functions";
			class DropAddWaypoint {};
			class DropCleanTsk {};
			class DropCleanVehicles {};
			class DropCreateAi {};
			class DropCreateTsk;
			class DropCreateVehicles {};
			class DropDrop {};
			class DropFillBox {};
			class DropSelectPosition {};
		};
	};
};
