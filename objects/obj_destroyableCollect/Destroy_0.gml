if (ds_list_find_index(global.saveList, id) == -1)
{
	ds_list_add(global.saveList, id);
	
	repeat (6) {
		with (instance_create_depth(x + 16, y, 0, obj_destroyableParticles)) {
			image_speed = 0;
			image_index = random_range(0, 6)
			sprite_index = spr_debris;
		
		}
	}
	with (instance_create_depth(x, y, 0, obj_destroyableSecondParticles))
		sprite_index = spr_pizzablockdead

	global.collect += 10;
}
