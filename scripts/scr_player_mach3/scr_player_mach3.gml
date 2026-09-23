function scr_player_mach3() {
	var _maxmovespeed = 16;
	var _maxcrazyspeed = 16;
	var _accel = 0.025;
	var _machSpr = [spr_player_mach3, spr_player_mach3jump]
	
	hsp = movespeed * xscale;

	if movespeed != _maxmovespeed
		movespeed += _accel
	
	if (keyboard_check_pressed(ord("Z")) && grounded) {
		vsp = -11;
		sprite_index = spr_player_mach3jump;
		image_index = 0;
		exit;
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
		exit;
	}
	
	if (!keyboard_check_direct(vk_shift) && grounded) {
		state = states.normal;
		sprite_index = spr_player_idle;
		image_index = 0;
	}
	
	if (sprite_index == spr_player_mach3jump && floor(image_index) == (image_number - 1))
		sprite_index = spr_player_mach3;
		
	if (!array_contains(_machSpr, sprite_index)) {
		sprite_index = spr_player_mach3	
	}
	
	
	switch (sprite_index) {	
		default:
			image_speed = 0.4;
			break;
	}
}