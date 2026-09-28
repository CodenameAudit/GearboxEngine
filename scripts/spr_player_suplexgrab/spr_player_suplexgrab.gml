function spr_player_suplexgrab(){
	scr_movePlayer();
	hsp = xscale * movespeed;
	var _groundMove = [spr_player_suplexdash]
	var _aerialMove = [spr_player_suplexgrabjumpstart, spr_player_suplexgrabjump]
	
	if (movespeed < 10)
		movespeed += 0.5;
				
	if (grounded && array_contains(_groundMove, sprite_index) && keyboard_check_pressed(vk_down)) {
		movespeed = 12;
		state = states.tumble;
		crouchslipbuffer = 25;
		sprite_index = spr_player_crouchslip;
		image_index = 0;
		exit;
	}
	
	if (keyboard_check_pressed(ord("Z")) && canJump) {
		vsp = -11;
		state = states.mach2;
		sprite_index = spr_player_longjump;
		image_index = 0;
		exit;
	}
	
	if (!grounded && keyboard_check_direct(vk_shift) && place_meeting(x + hsp, y, obj_solid)) {
		wallspeed = 6;
		state = states.climbwall;
		image_index = 0;
		exit;
	}
	else if ((grounded && place_meeting(x + hsp, y - 16, obj_solid)) || (!grounded && place_meeting(x + hsp, y, obj_solid))) {
		sprite_index = spr_player_wallsplat;
		vsp = -4;
		image_index = 0;
		state = states.bump;
		exit;
	}
	
	if (move != 0 && move != xscale) {
		if (grounded) {
			sprite_index = spr_player_idle;
			movespeed = 2;
			state = states.normal;
		}
		else {
			sprite_index = spr_player_suplexcancel;
			state = states.jump;
		}
		
		image_index = 0;
		exit;
	}
	
	if (animationEnd() && array_contains(_groundMove, sprite_index)) {
		if (keyboard_check_direct(vk_shift)) {
			state = states.mach2;
			sprite_index = spr_player_mach2;
		}
		else {
			state = states.normal;
			sprite_index = spr_player_idle;
		}
		exit;
	}
	
	if (grounded && (array_contains(_aerialMove, sprite_index))) {
		if (keyboard_check_direct(vk_shift)) {
			state = states.mach2;
			sprite_index = spr_player_mach2;
		}
		else {
			state = states.normal;
			sprite_index = spr_player_idle;
		}
	}
	
	if (!grounded && (!array_contains(_aerialMove, sprite_index)))
		sprite_index = spr_player_suplexgrabjumpstart;
	
	if (animationEnd() && sprite_index == spr_player_suplexgrabjumpstart)
		sprite_index = spr_player_suplexgrabjump;
	
	image_speed = 0.35;
}

function scr_player_uppercut() {
	scr_movePlayer();
	hsp = movespeed;
	
	if (move != 0)
		movespeed = approach(movespeed, move * 4, 0.5);
    else movespeed = approach(movespeed, 0, 0.5);
	
	if (grounded) {
		state = states.normal;
		
		if (move != 0)
			xscale = move;
		
		movespeed = abs(movespeed);
		exit;
	}
	
	if (animationEnd() && spr_player_breakdanceuppercut)
		sprite_index = spr_player_breakdanceuppercutend;
	
	scr_afterimageMach3();
	image_speed = 0.35;
}