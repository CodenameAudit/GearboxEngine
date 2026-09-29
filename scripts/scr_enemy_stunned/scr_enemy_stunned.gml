function scr_enemy_stunned() {
	var _scaredStates = [states.mach3]
	var _killStates = [states.mach3, states.freefall]
	
	hsp = 0;
	vsp += 0.5;
	sprite_index = scaredSprite;
	
	if (scareBuffer > 0) 
		scareBuffer -= 1;
	else if (scareBuffer == 0) {
		state = enemyStates.walk;
		exit;
	}
	
	if (array_contains(_killStates, obj_player.state) && place_meeting(x, y, obj_player)) {
		instance_destroy()
	}
}