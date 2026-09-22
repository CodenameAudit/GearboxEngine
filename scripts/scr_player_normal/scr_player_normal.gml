function scr_player_normal() {
	scr_input();
	
	hsp = movespeed;
	
	if move != 0 && !place_meeting(((x + hsp) * move), y, obj_solid){
		movespeed = 7 * move
		xscale = move
	}
	else movespeed = 0;
	
	if (keyboard_check_direct(ord("Z")) && grounded) {
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
		if (movespeed != 0)
			sprite_index = spr_player_move;
		else sprite_index = spr_player_idle;
	}
	
	if (sprite_index == spr_player_land && floor(image_index) == (image_number - 1))
		sprite_index = spr_player_idle
	
	image_speed = 0.35;
}