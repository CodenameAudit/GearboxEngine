function scr_player_mach2() {
	var _maxmovespeed = 12;
	var _slopeacel = 0.1;
	var _accel = 0.1;
	
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
	
	if (keyboard_check_direct(ord("Z")) && grounded) {
		vsp = -11;
	}
	
	if (!keyboard_check_direct(vk_shift) && grounded) {
		state = states.normal;
		sprite_index = spr_player_idle;
		image_index = 0;
	}
	
	if (sprite_index == spr_player_mach1 && floor(image_index) == (image_number - 1))
		sprite_index = spr_player_mach2;
}