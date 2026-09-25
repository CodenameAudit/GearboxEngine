var _destroyStates = [states.mach2, states.mach3, states.tumble, states.suplexgrab]

with (obj_player) {
	if ((place_meeting(x + (movespeed * xscale), y, other)) && array_contains(_destroyStates, state)) {
		instance_destroy(other)
	}
}
