with (obj_player) {
	if (place_meeting(x, y, other)) {
		sprite_index = spr_player_presentbox;
		x = other.x;
	    state = states.superjump;
	    sjumpVSP = -10;
		other.sprite_index = spr_presentbox_activate;
		other.image_index = 0;
	}
}

if sprite_index == spr_presentbox_activate && animationEnd() {
	sprite_index = spr_presentbox_idle	
}