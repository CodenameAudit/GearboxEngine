var _destroyHorizontalStates = [states.mach2, states.mach3, states.tumble, states.suplexgrab]
var _destroyVerticalStates = [states.freefall, states.uppercut]

with (obj_player) {
	if ((place_meeting(x + (movespeed * xscale), y, other)) && array_contains(_destroyHorizontalStates, state)) {
		instance_destroy(other)
	}
	else if ((place_meeting(x, y + vsp, other)) && array_contains(_destroyVerticalStates, state)) {
		instance_destroy(other)
	}
}
