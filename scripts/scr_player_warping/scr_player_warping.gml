function scr_player_enterWarp(){
	hsp = 0;
	vsp = 0
    movespeed = 0;
    image_speed = 0.35;
    
    if (animationEnd())
    {
        image_speed = 0;
		if (!instance_exists(obj_fadeout)) {
			with (instance_create_depth(x, y, 0, obj_fadeout)) {
				targetRoom = other.savedTRoom;
				targetDoor = other.savedTDoor;
				
				switch (other.sprite_index) {
					case spr_player_pizzaboxup:
						savedState = states.normal;
						break;
					
					case spr_player_lookdoor:
					case spr_player_victory:
						savedState = states.exitDoor;
						break;
				
					case spr_player_pizzaboxdown:
						savedState = states.crouch;
						break;
				}
				
				savedMovespeed = obj_player.movespeed
				savedXscale = obj_player.xscale
			}
		}
    }
}

function scr_player_exitDoor(){
	hsp = 0;
	vsp = 0
    movespeed = 0;
    image_speed = 0.35;
    sprite_index = spr_player_walkfront;
	
    if (animationEnd())
    {
		switch (sprite_index) {
			case spr_player_walkfront:
				state = states.normal;
				sprite_index = spr_player_idle;
				image_index = 0;
				exit;
		}
    }
}