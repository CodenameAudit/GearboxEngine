var _killStates = [states.mach2, states.mach3, states.machslide, states.freefall]

if (!array_contains(_killStates, obj_player.state)) {
	instance_destroy()
}