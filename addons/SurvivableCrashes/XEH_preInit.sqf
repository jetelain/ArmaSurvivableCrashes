r0ed_SurvivableCrashes_OnVehicleCrash = compileFinal preprocessFileLineNumbers "\z\r0ed\addons\SurvivableCrashes\functions\fn_onVehicleCrash.sqf";
r0ed_SurvivableCrashes_VehicleInit = compileFinal preprocessFileLineNumbers "\z\r0ed\addons\SurvivableCrashes\functions\fn_vehicleInit.sqf";
r0ed_SurvivableCrashes_PlaySfx = compileFinal preprocessFileLineNumbers "\z\r0ed\addons\SurvivableCrashes\functions\fn_playSfx.sqf";

[
	"r0ed_SurvivableCrashes_modEnable",
	"CHECKBOX",
	["Enable Survivable Crashes", "Allow crashes to be survivable!"],
	"Survivable Crashes",
	true, // Default Value
	true
] call CBA_fnc_addSetting;

[
	"r0ed_SurvivableCrashes_vfxEnable",
	"CHECKBOX",
	["Enable Visual Effects", "Enable visual effects to affect your view"],
	"Survivable Crashes",
	true, // Default Value
	true
] call CBA_fnc_addSetting;

[
	"r0ed_SurvivableCrashes_sfxEnable",
	"CHECKBOX",
	["Enable Sound Effects", "Enable additional sound effects to play whilst crashing"],
	"Survivable Crashes",
	true, // Default Value
	true
] call CBA_fnc_addSetting;

[
	"r0ed_SurvivableCrashes_efxEnable",
	"CHECKBOX",
	["Enable Exaggerated Effects", "Enable exaggerated 3D effects during and after a crash"],
	"Survivable Crashes",
	true, // Default Value
	true
] call CBA_fnc_addSetting;

[
	"r0ed_SurvivableCrashes_medicalSystem",
	"LIST",
	["Medical System", "What medical system shall be used to damage victims"],
	"Survivable Crashes",
	[
		["ACE", "VANILLA", "AUTO", "LIMIT_DAMAGE", "NONE"],
		["Force ACE3", "Force Vanilla", "Auto Detect (ACE3 or Vanilla)", "Limited Damage Only", "Do not prevent damage (Game Default damage)"],
		2 // Default Value
	],
	true
] call CBA_fnc_addSetting;

[
	"r0ed_SurvivableCrashes_damageMultiplier",
	"SLIDER",
	["Damage multiplier", "The amount of damage to apply to crashed player (Recommended ~0.2 with ACE3)"],
	"Survivable Crashes",
	[0, 1, 0.3 /* Default Value */, 1],
	true
] call CBA_fnc_addSetting;

[
	"r0ed_SurvivableCrashes_vehicleWhitelist",
	"EDITBOX",
	["Vehicle classes", "Vehicle classes to whitelist,<br>in square brackets, with quotation marks seperated by ,"],
	["Survivable Crashes", "Advanced"],
	"[""Air""]", // Default Value
	true
] call CBA_fnc_addSetting;

[
	"r0ed_SurvivableCrashes_onCrashCode",
	"EDITBOX",
	["On Crash Code", "Code called vehicle local:<br>_this = [vehicle, EventHandlerEvent_HandleDamage]"],
	["Survivable Crashes", "Advanced"],
	"params[""_vehicle"", ""_event""];", // Default Value
	true
] call CBA_fnc_addSetting;

[
	"r0ed_SurvivableCrashes_onPostCrashCode",
	"EDITBOX",
	["Crew Post-Crash Code", "Code called locally by each crew member after they are ejected:<br>_this = [unit]"],
	["Survivable Crashes", "Advanced"],
	"params[""_unit""];", // Default Value
	true
] call CBA_fnc_addSetting;

[
	"r0ed_SurvivableCrashes_vehicleRestCode",
	"EDITBOX",
	["Vehicle Rest Code", "Code called after vehicle stops moving:<br>_this = [vehicle, impact speed]"],
	["Survivable Crashes", "Advanced"],
	"params[""_veh""];sleep (40 + random 40);_veh allowDamage true;_veh setDamage 1;", // Default Value
	true
] call CBA_fnc_addSetting;

[
	"r0ed_SurvivableCrashes_debugEnable",
	"CHECKBOX",
	["Enable Debug", "Tick enable debug messages to appear in RPT and systemChat"],
	["Survivable Crashes", "Advanced"],
	false
] call CBA_fnc_addSetting;
