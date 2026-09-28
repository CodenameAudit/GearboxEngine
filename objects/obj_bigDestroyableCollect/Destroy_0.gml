event_inherited();

if (ds_list_find_index(global.saveList, id) == -1)
{
	with (instance_create_depth(x, y, 0, obj_destroyableSecondParticles))
		sprite_index = spr_bigpizzablockdead

	global.collect += 100;
}