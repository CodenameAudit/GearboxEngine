scr_utilty();

with (obj_player) {
	if (place_meeting(x, y, other) && keyboard_check_pressed(vk_up) && grounded && state == states.normal) {
		
		state = states.enterWarp
		targetRoom = other.targetRoom
		global.targetDoor = other.targetDoor
		image_index = 0;
		sprite_index = spr_player_lookdoor;
		exit;
	}
}