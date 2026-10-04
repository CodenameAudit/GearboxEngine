function scr_player_crouch() {
	var _nonNormalSprites = [spr_player_crouchjump, spr_player_crouchfall, spr_player_crouchstart];
	
	scr_movePlayer();
	scr_jumpStopPlayer();
	hsp = movespeed * xscale;
	
	if move != 0 && !place_meeting(((x + hsp) * move), y, obj_solid){
		movespeed = 4
		xscale = move
	}
	else movespeed = 0;
	
	if (keyboard_check_pressed(ord("Z")) && !place_meeting(x, y - 16, obj_solid) && canJump) {
		sprite_index = spr_player_crouchjump;
		image_index = 0;
		vsp = -8;
	}
	
	if (!keyboard_check_direct(vk_down) && !place_meeting(x, y - 16, obj_solid) && grounded) {		
		sprite_index = spr_player_idle;
		image_index = 0;
		state = states.normal;
		exit;
	}
	
	if (animationEnd() && (sprite_index == spr_player_crouchjump || sprite_index == spr_player_crouchstart))
		sprite_index = spr_player_crouchfall;
	
	if (grounded && sprite_index == spr_player_crouchfall)
		sprite_index = spr_player_crouch;
	
	if (!array_contains(_nonNormalSprites, sprite_index)) {
		if (abs(hsp) != 0)
			sprite_index = spr_player_crawl;
		else sprite_index = spr_player_crouch;
	}
	
	image_speed = 0.45;
}