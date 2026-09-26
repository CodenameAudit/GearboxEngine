// Inherit the parent event
event_inherited();
repeat (2) {
	with (instance_create_depth(x + random_range(0, sprite_width), y + random_range(0, sprite_height), 0, obj_destroyableParticles)) {
		hsp = random_range(-5, 5);
        vsp = random_range(-10, 10);
	}
}
instance_create_depth(x , y, 0, obj_destroyableSecondParticles);

