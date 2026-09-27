function scr_enemy_walk() {
	var _scaredStates = [states.mach3]
	var _killStates = [states.mach3, states.suplexgrab, states.freefall]
	
	hsp = 1 * xscale;
	vsp += 0.5;
	sprite_index = walkSprite;
	
	if (array_contains(_killStates, obj_player.state) && place_meeting(x, y, obj_player)) {
		instance_destroy()
	}
	
	if place_meeting(x + hsp, y - 16, obj_solid)
		xscale *= -1;
	if (grounded && !place_meeting(x + hsp, y + 10, obj_solid) && !place_meeting(x, y + 10, obj_slope))
		xscale *= -1;
}