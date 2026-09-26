function scr_player_freefall(){
	scr_movePlayer();
	hsp = movespeed * xscale;
	
	if (grounded && !place_meeting(x, y + vsp, par_destroyables)) {
		//Landed
		if (place_meeting(x, y + abs(vsp), obj_slope)) {
			state = states.tumble;
			sprite_index = spr_player_machroll;
			with (instance_place(x, y + 1, obj_slope))
					other.xscale = -sign(image_xscale);
			
			if (vsp >= 10)
				movespeed = 12
			else movespeed = 8
			
			image_index = 0;
			exit;
		}
		else {
			sprite_index = (sprite_index == spr_player_poundcancel1) ? spr_player_poundcancel2 : spr_player_bodyslamland;
			image_index = 0;
			state = states.freefallland;
			exit;
		}
	}
	else {
		if (move != 0)
			movespeed = approach(movespeed, 7, 0.2);
		
		if (move != 0 && move != xscale) {
			movespeed = 0;
			xscale = move;
		}
		
		if (place_meeting(x + move, y, obj_solid))
			movespeed = 0;
		
		if (vsp >= 2) vsp += 0.5;
		
		if (animationEnd() && sprite_index == spr_player_bodyslamstart)
			sprite_index = spr_player_bodyslamfall;
	}
	image_speed = 0.35;
}

function scr_player_freefallland(){
    hsp = 0;
	movespeed = 0;
	vsp = 0;
	
	if (animationEnd()) {
		//Needs to be hurt animation
		sprite_index = spr_player_idle;
		image_index = 0;
        state = states.normal;
	}
	
	image_speed = 0.35;
}