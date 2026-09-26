var _destroyHorizontalStates = [states.mach3]
var _destroyVerticalStates = [states.freefall]

with (obj_player) {
	if ((place_meeting(x + (movespeed * xscale), y, other)) && array_contains(_destroyHorizontalStates, state)) {
		instance_destroy(other)
	}
	else if ((place_meeting(x, y + vsp, other)) && array_contains(_destroyVerticalStates, state) && vsp >= 10) {
		instance_destroy(other)
	}
}
