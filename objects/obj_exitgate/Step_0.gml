if (obj_player.state == states.exitDoor && obj_player.sprite_index == spr_player_timesup && ds_list_find_index(global.saveList, id) == -1) {
	ds_list_add(global.saveList, id);
	//cameraShake = 3;
	image_index = 0;
	exit;
}
if (keyboard_check_pressed(vk_up) && global.escape && image_index == 1 && obj_player.state == states.normal) {
	show_debug_message("Rank start");
}