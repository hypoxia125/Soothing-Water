private _stateMachine = _this spawn {
	while {sleep 1; true} do {
		//Exit if wanted
		if !(missionNamespace getVariable ["SW_active", true]) exitWith {};
		//Unit Heal
		private _allUnits = allUnits select {alive _x};
		_allUnits apply {
			if (surfaceIsWater position _x && (vehicle _x == _x) && (getPosASL _x # 2 <= 0)) then {
				_x call SW_fnc_heal
			};
		};
	};
};

missionNamespace setVariable ["SW_stateMachine", _stateMachine];