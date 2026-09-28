if (ds_list_find_index(global.saveList, id) == -1)
{
	ds_list_add(global.saveList, id);
	global.key = false;
	
	with (instance_create_depth(x, y, 0, obj_enemyBody)) {
		sprite_index = spr_lock;
		hsp = random_range(-3, 3);
		vsp = random_range(-3, 3);
	}
}
with (instance_create_depth(x, y, 0, obj_door)) {
	sprite_index = spr_doorkey;
	image_index = 1;
	targetRoom = other.targetRoom;
	targetDoor = other.targetDoor;
}