with (obj_player) {
	if (place_meeting(x, y, other) && keyboard_check_direct(vk_up) && grounded && state == states.normal) {
		state = states.enterWarp
		savedTRoom = other.targetRoom
		savedTDoor = other.targetDoor
		image_index = 0;
		sprite_index = spr_player_lookdoor;
		exit;
	}
}