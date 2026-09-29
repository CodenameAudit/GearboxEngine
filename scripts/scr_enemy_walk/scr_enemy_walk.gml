function scr_enemy_walk() {
	var _scaredStates = [states.mach3]
	var _bumpStates = [states.jump, states.mach2, states.suplexgrab]
	var _killStates = [states.mach3, states.freefall]
	var _player = instance_nearest(x, y, obj_player)
	
	hsp = 1 * xscale;
	vsp += 0.5;
	sprite_index = walkSprite;
	
	if (array_contains(_killStates, obj_player.state) && place_meeting(x, y, obj_player)) {
		instance_destroy()
	}
	
	if (((_player.x > (x - 400) && _player.x < (x + 400)) && (y <= (_player.y + 90) && y >= (_player.y - 130)) && ((_player.xscale > 0 && x >= _player.x) || (_player.xscale < 0 && x <= _player.x))) && array_contains(_scaredStates, obj_player.state)) {
		hsp = 0;
		if (grounded) vsp = -3;
		scareBuffer = 125;
		xscale = -(_player.xscale);
		sprite_index = scaredSprite;
		state = enemyStates.scared;
		exit;
	}

	if place_meeting(x + hsp, y - 16, obj_solid)
		xscale *= -1;
}