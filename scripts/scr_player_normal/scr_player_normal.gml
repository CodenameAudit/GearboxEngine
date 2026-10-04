function scr_player_normal() {
	var _landSprites = [spr_player_land, spr_player_land2];
	scr_movePlayer();
	hsp = (movespeed * xscale);
	
	if (move != 0)
		movespeed = approach(movespeed, 8, 0.5);
	else movespeed = 0;
	
	if (move != 0 && move != xscale) {
		movespeed = 0;
		xscale = move;
	}
	
	if (keyboard_check_pressed(ord("Z")) && canJump) {
		vsp = -11;
		state = states.jump;
		sprite_index = spr_player_jump;
		image_index = 0;
		
		with (instance_create_depth(x, y, 0, obj_dusteffect))
			sprite_index = spr_highjumpcloud;
			
		exit;
	}
	else if (!grounded) {
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
	
	if (keyboard_check_pressed(vk_down) && grounded) {		
		sprite_index = spr_player_crouchstart;
		image_index = 0;
		state = states.crouch;
		exit;
	}
	
	if (sprite_index = spr_player_move && dustEffect > 0)
		dustEffect--;
	else if (dustEffect == 0) {
		instance_create_depth(x, y + 43, 0, obj_dusteffect)
		dustEffect = 12;	
	}
	
	if (!array_contains(_landSprites, sprite_index)) {
		if (abs(hsp) != 0)
			sprite_index = spr_player_move;
		else sprite_index = spr_player_idle;
	}
	
	if (array_contains(_landSprites, sprite_index) && animationEnd())
		sprite_index = spr_player_idle
	
	scr_do_grab();
	scr_do_taunt();
	image_speed = 0.35;
}