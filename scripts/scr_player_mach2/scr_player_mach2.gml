function scr_player_mach2() {
	var _maxmovespeed = 12;
	var _slopeacel = 0.1;
	var _accel = 0.1;
	var _sprBonus = [spr_player_secondjump2, spr_player_walljumpend, spr_player_rollgetup]
	
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
	
	if (!grounded && place_meeting_collision(x + hsp, y, obj_solid)) {
		if (wallspeed < 1)
			wallspeed = 1;
		else wallspeed = movespeed;
		
		state = states.climbwall;
		exit;
	}
	else if (grounded && (place_meeting_collision(x + hsp, y, obj_solid))) {
		//Bump Code Goes Here
	}
	
	if (keyboard_check_direct(vk_down)) {
		state = states.tumble
		sprite_index = spr_player_machroll;
		image_index = 0;
	}
	
	if (!keyboard_check_direct(vk_shift) && grounded) {
		state = states.normal;
		sprite_index = spr_player_idle;
		image_index = 0;
	}
	
	if (grounded && array_contains(_sprBonus, sprite_index)) {
		if (abs(hsp) < 6)
			sprite_index = spr_player_mach2;
		else sprite_index = spr_player_mach1;
	}
	
	if (floor(image_index) == (image_number - 1)) {
		switch (sprite_index) {
			case spr_player_mach1:
			case spr_player_climbwall:
				sprite_index = spr_player_mach2;
				break;
			
			case spr_player_secondjump1:
				sprite_index = spr_player_secondjump2;
				break;
			
			case spr_player_walljumpstart:
				sprite_index = spr_player_walljumpend;
				break;
		}
	}
	
	image_speed = abs(hsp) / 15;
}