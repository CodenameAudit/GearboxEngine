function scr_player_jump() {
	scr_movePlayer();
	
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
		sprite_index = spr_player_fall;
	
	image_speed = 0.35;
}