function scr_player_tumble() {
	scr_input();
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
	if (grounded && !keyboard_check_direct(vk_down)) {
		if (movespeed >= 12)
			state = states.mach3;
		else
			state = states.mach2;
            
		image_index = 0;
		sprite_index = spr_player_rollgetup;
	}
	
	image_speed = abs(movespeed) / 15;
}