function scr_player_jump() {
	var _aerialStart = [spr_player_jump, spr_player_suplexcancel]
	
	scr_movePlayer();
	scr_jumpStopPlayer();
	hsp = movespeed * xscale;
	
	if (move != 0)
		movespeed = approach(movespeed, 8, 0.5);
	else movespeed = 0;
	
	if (move != 0 && move != xscale) {
		movespeed = 0;
		xscale = move;
	}
	
	if (keyboard_check_pressed(vk_down)) {		
		sprite_index = spr_player_bodyslamstart;
		image_index = 0;
		vsp = -6;
		freefallSmash = -14;
		state = states.freefall;
		exit;
	}
	
	if (grounded) {
		sprite_index = (move != 0) ? spr_player_land2 : spr_player_land
		
		with (instance_create_depth(x, y, 0, obj_dusteffect))
			sprite_index = spr_landcloud;
			
		image_index = 0;
		state = states.normal;
		exit;
	}
	
	if (array_contains(_aerialStart, sprite_index) && animationEnd())
		sprite_index = spr_player_fall;
	
	scr_do_grab();
	scr_do_taunt();
	image_speed = 0.35;
}