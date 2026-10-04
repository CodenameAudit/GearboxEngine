function scr_player_climbwall(){
	scr_movePlayer();
	hsp = 0;
	movespeed = 0;
	vsp = -wallspeed;
    sprite_index = spr_player_climbwall;
	
    if (wallspeed < 20)
		wallspeed += 0.15;
	
	if (!place_meeting(x + xscale, y, obj_solid) && wallspeed > 0) {
		vsp = 0;
		hsp = wallspeed * xscale;
		
		if (wallspeed < 6)
			wallspeed = 6;
		
		if (wallspeed >= 6 && wallspeed < 12) {
			state = states.mach2;
			sprite_index = spr_player_mach2;
			movespeed = wallspeed;
			exit;
		}
		else if (wallspeed > 12) {
			state = states.mach3;
			movespeed = wallspeed;
			exit;
		}
		exit;
	}
	
	if (dustEffect > 0)
		dustEffect--;
	else {
		instance_create_depth(x + (xscale * 10), y + 43, 0, obj_dusteffect);
		dustEffect = 10;	
	}
	
	if (place_meeting(x, y + vsp, obj_solid) && !place_meeting(x - xscale, y + abs(vsp), par_destroyables)) {
		sprite_index = spr_player_superjumpland;
		image_index = 0;
		state = states.verticalSlam;
		exit;
	}
	
	if (!keyboard_check_direct(vk_shift)) {
		sprite_index = spr_player_fall;
		image_index = 0;
		state = states.jump;
		exit;
	}
	
	if (keyboard_check_pressed(ord("Z"))) {
		movespeed = 10;
		vsp = -11;
		xscale *= -1;
		sprite_index = spr_player_walljumpstart;
		image_index = 0;
		state = states.mach2;
		exit;
	}
	
	image_speed = 0.35;
}