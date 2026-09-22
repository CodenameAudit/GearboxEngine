function scr_player_jump() {
	if keyboard_check_direct(vk_left) move = -1;
	else if keyboard_check_direct(vk_right) move = 1;
	else move = 0;
	
	hsp = movespeed;
	
	if move != 0 && !place_meeting(((x + hsp) * move), y, obj_solid){
		movespeed = 7 * move
		xscale = move
	}
	else movespeed = 0;
	
	if (grounded) {
		state = states.normal
		sprite_index = spr_player_land;
	}
	
	if (sprite_index == spr_player_jump && floor(image_index) == (image_number - 1))
		sprite_index = spr_player_fall
}