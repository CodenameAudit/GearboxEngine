function scr_player_mach3() {
	var _maxmovespeed = 16;
	var _maxcrazyspeed = 20;
	var _accel = 0.025;
	var _crazyAccel = 0.1;
	var _specialSpr = [spr_player_mach3jump, spr_player_rollgetup] 
	
	scr_movePlayer();
	scr_jumpStopPlayer();
	hsp = movespeed * xscale;
	
	if (grounded) {
		if (movespeed < _maxmovespeed)
			movespeed += _accel;
		else movespeed += _crazyAccel;
	}
	
	if (movespeed >= _maxcrazyspeed) movespeed = _maxcrazyspeed;
	
	if (!array_contains(_specialSpr, sprite_index))
		sprite_index = (movespeed >= _maxmovespeed) ? spr_player_crazyrun : spr_player_mach3;
	
	if (keyboard_check_pressed(ord("Z")) && canJump) {
		vsp = -11;
		if !(movespeed >= _maxmovespeed)
			sprite_index = spr_player_mach3jump;
		
		with (instance_create_depth(x, y, 0, obj_dusteffect)) {
			sprite_index = spr_jumpdust;
			image_xscale = other.xscale;
		}
			
		image_index = 0;
		exit;
	}
	
	if ((!grounded && place_meeting(x + hsp, y, obj_solid)) || (grounded && place_meeting(x, y + 16, obj_slope) && place_meeting(x + hsp, y - 16, obj_solid))) {
		if (movespeed < 1)
			wallspeed = 1;
		else wallspeed = movespeed;
		
		state = states.climbwall;
		exit;
	}
	else if (grounded && (place_meeting(x + hsp, y - 16, obj_solid))) {
		sprite_index = spr_player_mach3hitwall;
		image_index = 0;
		hsp = 6 * -xscale;
		vsp = -6;
		state = states.bump;
		exit;
	}
	
	if (keyboard_check_direct(vk_down)) {
		state = states.tumble;
		
		with (instance_create_depth(x, y, 0, obj_dusteffect)) {
			sprite_index = spr_jumpdust;
			image_xscale = other.xscale;
		}
			
		sprite_index = spr_player_machroll;
		image_index = 0;
		exit;
	}
	
	if (!instance_exists(obj_dashcloud) && grounded) {
		with (instance_create_depth(x, y, 0, obj_dashcloud))
			image_xscale = other.xscale;
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

	if (array_contains(_specialSpr, sprite_index) && animationEnd())
		sprite_index = spr_player_mach3;
	
	scr_do_grab();
	scr_do_taunt();
	scr_afterimageMach3();
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