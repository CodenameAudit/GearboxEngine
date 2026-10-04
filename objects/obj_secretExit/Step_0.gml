if (sprite_index == spr_secretportal_spawnopen) {
	with (obj_player) {
		sprite_index = spr_player_bodyslamfall;
		hsp = 0;
		movespeed = 0;
		vsp = 0;
		freefallSmash = 0;
		xscale = approach(xscale, 1, 0.05);
		yscale = approach(yscale, 1, 0.05);
	}
}

if animationEnd() {
	switch (sprite_index) {
		case spr_secretportal_spawnopen:
			sprite_index = spr_secretportal_spawnidle;
			break;
		
		case spr_secretportal_spawnidle:
			sprite_index = spr_secretportal_spawnclose;
			break;
			
		case spr_secretportal_spawnclose:
			instance_destroy();
			break;
	}
	image_index = 0;
}