#include "script_component.hpp"

class DefaultEventhandlers;

class CfgPatches {
    class ADDON {
        name = QUOTE(COMPONENT);
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {};
        author = "Rafael09ED";
        VERSION_CONFIG;
    };
};

class CfgFactionClasses
{
	class NO_CATEGORY;
	class r0ed_SurvivableCrashes: NO_CATEGORY
	{
		displayName = "Survivable Crashes";
	};
};

class Extended_PostInit_EventHandlers {
    class r0ed_SurvivableCrashes_XEH_PostInit {
        init = "call compile preprocessFileLineNumbers '\z\r0ed\addons\SurvivableCrashes\XEH_postInit.sqf'";
    };
};
class Extended_PreInit_EventHandlers {
    class r0ed_SurvivableCrashes_XEH_PreInit {
        init = "call compile preprocessFileLineNumbers '\z\r0ed\addons\SurvivableCrashes\XEH_preInit.sqf'";
    };
};
class CfgFunctions
{
	class r0ed
	{
		tag = "r0ed";
		class SurvivableCrashes
		{
			file = "\z\r0ed\addons\SurvivableCrashes\functions";
			class vehicleCrashLocal{};
			class crashVisualEffects{};
		};
		class util
		{
			file = "\z\r0ed\addons\SurvivableCrashes\functions\util";
			class log {};
		};
	};
};
class CfgSounds {
	class AutorotationWarn
	{
		name = "AutorotationWarn";
		sound[]={"\z\r0ed\addons\SurvivableCrashes\sounds\ACE_AutorotationWarning.ogg", 4, 1};
		titles[]={};
	};
};
class Extended_GetInMan_EventHandlers {
    class CAManBase {
        class r0ed_SurvivableCrashes_XEH_GetInMan {
            getInMan = "call compile preprocessFileLineNumbers '\z\r0ed\addons\SurvivableCrashes\XEH_getInMan.sqf'";
        };
    };
};

// https://community.bistudio.com/wiki/Arma_3_Module_Framework
// https://forums.bistudio.com/topic/184230-error-with-making-a-module/?p=2904848
