function scr_player_SjumpPrep() {
	scr_movePlayer();
	hsp = movespeed * xscale;
	
	if (sprite_index != spr_player_superjumpprep) {
		if move != 0 && !place_meeting(((x + hsp) * move), y, obj_solid) {
			movespeed = 2;
			xscale = move;
		}
		else movespeed = 0;
	
		if (!keyboard_check_direct(vk_up) && grounded) {
			sprite_index = spr_player_superjump;
			image_index = 0;
			state = states.superjump;
			vsp = -17;
			exit; 
		}
	
		if (abs(hsp) != 0)
			sprite_index = spr_player_superjumpleft;
		else sprite_index = spr_player_superjumppreplight;
	}
	else {
		movespeed = approach(movespeed, 0, 1);
		
		if (animationEnd())
			sprite_index = spr_player_superjumppreplight;
	}
	
	image_speed = 0.35;
}

function scr_player_Sjump() {
	var _nonCancelSpr = [spr_player_Sjumpcancelstart]
	scr_movePlayer();
	hsp = 0;
	vsp -= 0.1;
	movespeed = 0;
	
	if (sprite_index == spr_player_Sjumpcancelstart)
		vsp = 0;
	
	if (keyboard_check_pressed(ord("X")) && !array_contains(_nonCancelSpr, sprite_index)) {
		sprite_index = spr_player_Sjumpcancelstart
		image_index = 0;
		if (move != 0)
			xscale = move;
	}
	
	if (sprite_index = spr_player_Sjumpcancelstart && animationEnd()) {
		movespeed = 13;
		vsp = -4;
		sprite_index = spr_player_Sjumpcancel;
		image_index = 0;
		state = states.mach3;
		exit;
	}
	
	if place_meeting(x, y + vsp, obj_solid) {
		sprite_index = spr_player_superjumpland;
		image_index = 0;
		state = states.verticalSlam;
		exit;
	}
	
	scr_afterimageMach3();
	image_speed = 0.5;
}

function scr_player_SjumpCancel() {
	hsp = 0;
	vsp = 0
    movespeed = 0;
    image_speed = 0.35;
    
    if (animationEnd()) {
		state = states.jump;
		sprite_index = spr_player_fall;
        image_speed = 0;
		exit;
    }
}