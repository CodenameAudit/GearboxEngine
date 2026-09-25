var _allowedState = [states.taunt]

if (!array_contains(_allowedState, obj_player.state)) {
	instance_destroy()	
}