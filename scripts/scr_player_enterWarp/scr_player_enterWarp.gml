function scr_player_enterWarp(){
	hsp = 0;
	vsp = 0
    movespeed = 0;
    image_speed = 0.35;
    
    if (animationEnd())
    {
        image_speed = 0;
		
		switch (sprite_index) {
			case spr_player_pizzaboxup:
			case spr_player_lookdoor:
				state = states.normal;
				sprite_index = spr_player_idle;
				break;
				
			case spr_player_pizzaboxdown:
				state = states.crouch;
				sprite_index = spr_player_crouchfall;
				break;
			
		}

		
		scr_gotoRoom(targetRoom)
    }
}