function scr_player_uppercut() {
	scr_movePlayer();
	hsp = movespeed;
	
	if (move != 0)
		movespeed = approach(movespeed, move * 4, 0.5);
    else movespeed = approach(movespeed, 0, 0.5);
	
	if (grounded) {
		state = states.normal;
		
		if (move != 0)
			xscale = move;
		
		movespeed = abs(movespeed);
		exit;
	}
	
	if (animationEnd() && spr_player_breakdanceuppercut)
		sprite_index = spr_player_breakdanceuppercutend;
	
	image_speed = 0.35;
}