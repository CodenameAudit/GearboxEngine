function scr_player_normal() {
	scr_movePlayer();
	
	hsp = movespeed;
	
	if move != 0 && !place_meeting(((x + hsp) * move), y, obj_solid){
		movespeed = 7 * move
		xscale = move
	}
	else movespeed = 0;
	
	if (keyboard_check_pressed(ord("Z")) && grounded) {
		vsp = -11;
		state = states.jump;
		sprite_index = spr_player_jump;
		image_index = 0;
		exit;
	}
	else if !grounded {
		state = states.jump;
		sprite_index = spr_player_fall;
		image_index = 0;
		exit;
	}
	
	if (keyboard_check_direct(vk_shift) && grounded) {
		if (movespeed < 6)
			movespeed = 6;
		
		sprite_index = spr_player_mach1;
		image_index = 0;
		state = states.mach2;
		exit;
	}
	
	if (sprite_index != spr_player_land) {
		if (abs(hsp) != 0)
			sprite_index = spr_player_move;
		else sprite_index = spr_player_idle;
	}
	
	if (sprite_index == spr_player_land && animationEnd())
		sprite_index = spr_player_idle
	
	scr_do_grab();
	scr_do_taunt();
	image_speed = 0.35;
}