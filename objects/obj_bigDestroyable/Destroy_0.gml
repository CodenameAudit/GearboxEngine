// Inherit the parent event
event_inherited();
repeat (8) {
	with (instance_create_depth(x + random_range(0, 64), y + random_range(0, 64), 0, obj_destroyableParticles)) {
		hsp = random_range(-5, 5);
        vsp = random_range(-10, 10);
	}
}
repeat (3) {
	instance_create_depth(x + random_range(0, 64), y + random_range(0, 64), 0, obj_destroyableSecondParticles);
}
