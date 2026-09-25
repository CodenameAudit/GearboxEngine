function scr_player_mach2() {
	var _maxmovespeed = 12;
	var _slopeacel = 0.1;
	var _accel = 0.1;
	var _sprBonus = [spr_player_secondjump2, spr_player_walljumpend, spr_player_longjumpend]
	
	scr_movePlayer();
	hsp = movespeed * xscale;

	if (grounded) {
		if (movespeed < _maxmovespeed)
			movespeed += _accel
		
		if (abs(hsp) >= _maxmovespeed) {
			sprite_index = spr_player_mach3;
			image_index = 0;
			state = states.mach3;
			exit;
		}
	}
	
	if (keyboard_check_pressed(ord("Z")) && grounded) {
		vsp = -11;
		sprite_index = spr_player_secondjump1;
		image_index = 0;
	}
	
	if ((!grounded && place_meeting(x + hsp, y, obj_solid)) || (grounded && place_meeting(x, y + 16, obj_slope) && place_meeting(x + hsp, y - 16, obj_solid))) {
		if (movespeed < 1)
			wallspeed = 1;
		else wallspeed = movespeed;
		
		state = states.climbwall;
		exit;
	}
	else if (grounded && (place_meeting(x + hsp, y - 16, obj_solid))) {
		sprite_index = spr_player_wallsplat;
		image_index = 0;
		state = states.bump;
		exit;
	}
	
	if (keyboard_check_direct(vk_down)) {
		state = states.tumble
		sprite_index = spr_player_machroll;
		image_index = 0;
	}
	
	
	if (!keyboard_check_direct(vk_shift) && grounded) {
		state = states.machslide;
		sprite_index = spr_player_machslidestart;
		image_index = 0;
		exit;
	}
	
	if (move != 0 && move != xscale && grounded) {
		sprite_index = spr_player_machslideboost;
		image_index = 0;
		state = states.machslide;
		exit;
	}
	
	if (grounded && array_contains(_sprBonus, sprite_index)) {
		if (abs(hsp) > 8)
			sprite_index = spr_player_mach2;
		else sprite_index = spr_player_mach1;
	}
	
	if (animationEnd()) {
		switch (sprite_index) {
			case spr_player_mach1:
			case spr_player_climbwall:
			case spr_player_rollgetup:
				sprite_index = spr_player_mach2;
				break;
			
			case spr_player_secondjump1:
				sprite_index = spr_player_secondjump2;
				break;
			
			case spr_player_walljumpstart:
				sprite_index = spr_player_walljumpend;
				break;
			
			case spr_player_longjump:
				sprite_index = spr_player_longjumpend;
				break;
		}
	}
	
	scr_do_grab();
	scr_do_taunt();
	switch (sprite_index) {
		case spr_player_rollgetup:
		case spr_player_longjump:
		case spr_player_longjumpend:
			image_speed = 0.35;
			break;
		
		default:
			image_speed = abs(hsp) / 15;
			break;
	}
}