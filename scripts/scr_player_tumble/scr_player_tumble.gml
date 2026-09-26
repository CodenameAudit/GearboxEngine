function scr_player_tumble() {
	scr_movePlayer();
	hsp = xscale * movespeed
	
	if (!grounded && sprite_index != spr_player_dive) {
		vsp = 10;
	    sprite_index = spr_player_dive;
	}
	
	if (sprite_index == spr_player_dive && vsp < 10)
        vsp = 10;
	
	if (grounded && sprite_index == spr_player_dive)
    {
        sprite_index = spr_player_machroll;
        image_index = 0;
    }
	
	if (movespeed <= 2)
		state = states.normal;
	
	if (place_meeting(x + hsp, y - 10, obj_solid)) {
		sprite_index = spr_player_wallsplat;
		image_index = 0;
		state = states.bump;
		exit;
	}
	
	switch (sprite_index) {
		case spr_player_secondjump1:
		case spr_player_secondjump2:
			if (grounded)
				sprite_index = spr_player_machroll;
			break;
		
		case spr_player_machroll:
			if !(grounded)
				sprite_index = spr_player_mach2;
			break;
	}
	
	if (keyboard_check_pressed(ord("Z")) && sprite_index == spr_player_dive) {		
		sprite_index = spr_player_poundcancel1;
		image_index = 0;
		movespeed = hsp;
		vsp = -6;
		state = states.freefall;
		exit;
	}
	
	if (!keyboard_check_direct(vk_down) && !place_meeting(x, y - 32, obj_solid) && crouchslipbuffer == 0 && grounded) {
		if (movespeed >= 12)
			state = states.mach3;
		else
			state = states.mach2;
            
		image_index = 0;
		sprite_index = spr_player_rollgetup;
	}
	
	if (crouchslipbuffer != 0)
		crouchslipbuffer--;	
	
	image_speed = abs(movespeed) / 15;
}