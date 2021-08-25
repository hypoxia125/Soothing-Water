//Prevent running in menu
if (allDisplays isEqualTo [findDisplay 0]) exitWith {};

//Server Check
if !(isServer) exitWith {
	["Soothing Water will not run on a non server machine!"] call BIS_fnc_error;
};

[] spawn {
	//Wait Until Mission Start - Prevent Firing in Briefing
	waitUntil {time > 0};

	if (call SW_fnc_aceCheck) exitWith {
		["ACE Medical is running. Not compatible."] call BIS_fnc_error;
	};

	missionNamespace setVariable ["SW_active", true];
	[] spawn SW_fnc_stateMachine;
};

systemChat "Soothing Water Initialized";