
missionNamespace setVariable ["r0ed_SurvivableCrashesVar_ModEnabled", false];

["CBA_settingsInitialized", {
	[
		r0ed_SurvivableCrashes_modEnable,
		r0ed_SurvivableCrashes_vfxEnable,
		r0ed_SurvivableCrashes_sfxEnable,
		r0ed_SurvivableCrashes_efxEnable,
		r0ed_SurvivableCrashes_medicalSystem,
		r0ed_SurvivableCrashes_damageMultiplier,
		call compile r0ed_SurvivableCrashes_vehicleWhitelist,
		compile r0ed_SurvivableCrashes_onCrashCode,
		compile r0ed_SurvivableCrashes_onPostCrashCode,
		compile r0ed_SurvivableCrashes_vehicleRestCode
	] call compile preprocessFileLineNumbers "\z\r0ed\addons\SurvivableCrashes\functions\init\init_survivableCrashes.sqf";

	// Log the details
	[format ["CBA Settings: %1", [
		r0ed_SurvivableCrashes_modEnable,
		r0ed_SurvivableCrashes_vfxEnable,
		r0ed_SurvivableCrashes_sfxEnable,
		r0ed_SurvivableCrashes_efxEnable,
		r0ed_SurvivableCrashes_medicalSystem,
		r0ed_SurvivableCrashes_damageMultiplier,
		call compile r0ed_SurvivableCrashes_vehicleWhitelist,
		compile r0ed_SurvivableCrashes_onCrashCode,
		compile r0ed_SurvivableCrashes_onPostCrashCode,
		compile r0ed_SurvivableCrashes_vehicleRestCode
	]], "SurvivableCrashes\XEH_postInit.sqf"] call r0ed_fnc_log;

	missionNamespace setVariable["r0ed_SurvivableCrashes_Initialized", true];

}] call CBA_fnc_addEventHandler;