if (ds_list_find_index(global.saveList, id) == -1)
{
	ds_list_add(global.saveList, id);
	
	repeat (4) {
		with (instance_create_depth(x + random_range(0, 64), y + random_range(0, 64), 0, obj_destroyableParticles)) {
			hsp = random_range(-5, 5);
	        vsp = random_range(-10, 10);
			image_angle = random_range(0, 360)
		}
	}
	
	instance_create_depth(x, y, 0, obj_destroyableSecondParticles);
}
