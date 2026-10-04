var _killStates = [states.suplexgrab, states.tumble]

if (!array_contains(_killStates, obj_player.state)) {
	instance_destroy()
}

if (image_alpha > 0)
	image_alpha -= 0.1;
else {
	instance_destroy()
}