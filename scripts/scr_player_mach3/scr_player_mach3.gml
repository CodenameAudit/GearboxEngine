function scr_player_mach3() {
	var _maxmovespeed = 16;
	var _maxcrazyspeed = 20;
	var _accel = 0.025;
	var _crazyAccel = 0.1;
	var _machSpr = [spr_player_mach3, spr_player_mach3jump, spr_player_crazyrun, spr_player_rollgetup]
	
	scr_movePlayer();
	hsp = movespeed * xscale;
	
	if (grounded) {
		if (movespeed < _maxmovespeed)
			movespeed += _accel;
		else movespeed += _crazyAccel;
	}
	
	if (movespeed >= _maxcrazyspeed) movespeed = _maxcrazyspeed;
	
	var _mach3Spr = (abs(hsp) >= _maxmovespeed) ? spr_player_crazyrun : spr_player_mach3
	
	if (keyboard_check_pressed(ord("Z")) && grounded) {
		vsp = -11;
		if !(movespeed >= _maxmovespeed)
			sprite_index = spr_player_mach3jump;
		image_index = 0;
		exit;
	}
	
	if (!grounded && place_meeting(x + hsp, y, obj_solid)) {
		if (movespeed < 1)
			wallspeed = 1;
		else wallspeed = movespeed;
		
		state = states.climbwall;
		exit;
	}
	else if (grounded && (place_meeting(x + hsp, y, obj_solid))) {
		//Bump Code Goes Here
	}
	
	if (keyboard_check_direct(vk_down)) {
		state = states.tumble
		sprite_index = spr_player_machroll;
		image_index = 0;
		exit;
	}
	
	if (!keyboard_check_direct(vk_shift) && grounded) {
		state = states.machslide;
		sprite_index = spr_player_machslidestart;
		image_index = 0;
		exit;
	}
	
	if (move != 0 && move != xscale && grounded) {
		sprite_index = spr_player_machslideboost3;
		image_index = 0;
		state = states.machslide;
		exit;
	}
	
	if ((sprite_index == spr_player_mach3jump || sprite_index == spr_player_rollgetup) && floor(image_index) == (image_number - 1))
		sprite_index = _mach3Spr;
		
	if (!array_contains(_machSpr, sprite_index)) {
		sprite_index = _mach3Spr	
	}
	
	switch (sprite_index) {
		case spr_player_rollgetup:
			image_speed = 0.35;
			break;
		
		case spr_player_crazyrun:
			image_speed = 0.75;
			break;
		
		default:
			image_speed = 0.4;
			break;
	}
}