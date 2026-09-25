var _allowedState = [states.mach3]

if (!array_contains(_allowedState, obj_player.state)) {
	instance_destroy()	
}

x = obj_player.x;
y = obj_player.y; 