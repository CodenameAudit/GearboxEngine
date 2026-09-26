function scr_player_crouch() {
	scr_movePlayer();
	hsp = movespeed * xscale;
	var _nonwdawd = [spr_player_crouchjump, spr_player_crouchfall, spr_player_crouchstart]
	
	if move != 0 && !place_meeting(((x + hsp) * move), y, obj_solid){
		movespeed = 4
		xscale = move
	}
	else movespeed = 0;
	
	if (keyboard_check_pressed(ord("Z")) && !place_meeting(x, y - 32, obj_solid) && grounded) {
		vsp = -8;
		sprite_index = spr_player_crouchjump;
		image_index = 0;
		exit;
	}
	
	if (!keyboard_check_direct(vk_down) && !place_meeting(x, y - 32, obj_solid) && grounded) {		
		sprite_index = spr_player_idle;
		image_index = 0;
		state = states.normal;
		exit;
	}
	
	if (animationEnd() && (sprite_index == spr_player_crouchjump || sprite_index == spr_player_crouchstart))
		sprite_index = spr_player_crouchfall;
	
	if (grounded && sprite_index == spr_player_crouchfall)
		sprite_index = spr_player_crouch;
	
	if (!array_contains(_nonwdawd, sprite_index)) {
		if (abs(hsp) != 0)
			sprite_index = spr_player_crawl;
		else sprite_index = spr_player_crouch;
	}
	
	image_speed = 0.45;
}