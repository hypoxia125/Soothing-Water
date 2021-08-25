params [
	["_unit", objNull, [objNull]]
];

private _currentDamage = damage _unit;
private _change = -0.025;

if (alive _unit) then {
	if (_currentDamage + _change > 0) then {
		_unit setDamage (_currentDamage + _change);
		["getHeart"] remoteExec ["playSound", _unit];
	} else {
		_unit setDamage 0;
	};
};

damage _unit;