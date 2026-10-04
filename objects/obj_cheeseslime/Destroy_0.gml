with (instance_create_depth(x, y, 0, obj_enemyBody)) {
	vsp = random_range(-10, -18);
	hsp = sign(x - obj_player.x) * random_range(10, 18);
	sprite_index = other.deadSprite
	image_xscale = -obj_player.xscale
}

with (obj_player) {
	if (state == states.mach3 && sprite_index == spr_player_mach3 && grounded) {
		sprite_index = spr_player_mach3hit;
		image_index = 0;
	}
}

with (instance_create_depth(x, y, 0, obj_dusteffect))
	sprite_index = spr_bangeffect;
			