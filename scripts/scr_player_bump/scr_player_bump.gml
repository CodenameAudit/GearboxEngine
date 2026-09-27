function scr_player_bump() {
	var _bumpAnimation = [spr_player_wallsplat, spr_player_mach3hitwall]
	
	if (grounded) {
		hsp = 0;
		movespeed = 0;
	}
	
	if (animationEnd()) {
		state = states.normal;
		sprite_index = spr_player_idle;
		image_index = 0;
		exit;
	}
	
	if (!array_contains(_bumpAnimation, sprite_index)) {
		sprite_index = spr_player_wallsplat;
	}
	
	image_speed = 0.35;
}
