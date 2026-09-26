function scr_player_jump() {
	scr_movePlayer();
	hsp = movespeed;
	var _spriteShit = [spr_player_jump, spr_player_suplexcancel]
	
	if move != 0 && !place_meeting(((x + hsp) * move), y, obj_solid){
		movespeed = 7 * move
		xscale = move
	}
	else movespeed = 0;
	
	if (grounded) {
		state = states.normal
		if (move != 0)
			sprite_index = spr_player_land2;
		else sprite_index = spr_player_land;
	}
	
	if (keyboard_check_pressed(vk_down)) {		
		sprite_index = spr_player_bodyslamstart;
		image_index = 0;
		vsp = -6;
		state = states.freefall;
		exit;
	}
	
	if (array_contains(_spriteShit, sprite_index) && animationEnd())
		sprite_index = spr_player_fall;
	
	scr_do_grab();
	scr_do_taunt();
	image_speed = 0.35;
}