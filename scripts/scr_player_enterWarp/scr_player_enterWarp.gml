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
					case spr_player_lookdoor:
						savedState = states.normal;
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