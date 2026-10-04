if (ds_list_find_index(global.saveList, id) == -1) {
	repeat (8) {
		with (instance_create_depth(x + random_range(0, 64), y + random_range(0, 64), 0, obj_destroyableParticles)) {
				hsp = random_range(-5, 5);
				vsp = random_range(-10, 10);
				sprite_index = spr_metalblockdebris
				image_speed = 0;
				image_index = random_range(0, image_number - 1);
		}
	}
	ds_list_add(global.saveList, id);
}