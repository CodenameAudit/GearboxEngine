function scr_player_enterWarp(){
	hsp = 0;
	vsp = 0
    movespeed = 0;
    image_speed = 0.35;
    
	if (sprite_index == spr_player_hurt) {
		xscale = approach(xscale, 0, 0.15);
		yscale = approach(yscale, 0, 0.15);
	}
	
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
					case spr_player_entergate:
					case spr_player_victory:
						savedState = states.exitDoor;
						break;
				
					case spr_player_pizzaboxdown:
						savedState = states.crouch;
						break;
					
					case spr_player_hurt:
						savedState = states.freefall;
						vsp = 0;
						break;
				}
				
				savedMovespeed = obj_player.movespeed;
				savedXscale = obj_player.xscale;
			}
		}
    }
}

function scr_player_exitDoor(){
	hsp = 0;
	vsp = 0
    movespeed = 0;
    
	if (sprite_index != spr_player_timesup)
		sprite_index = spr_player_walkfront;
	
    if (animationEnd())
    {
		if (place_meeting(x, y, obj_exitgate) && sprite_index != spr_player_timesup) {
			sprite_index = spr_player_timesup;
			image_index = 0;
			exit;
		}
		else {
			state = states.normal;
			sprite_index = spr_player_idle;
			image_index = 0;
			exit;
		}
    }
	
	image_speed = 0.35;
}