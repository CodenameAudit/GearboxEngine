if (keyboard_check_pressed(vk_up) && other.grounded && other.state == states.normal) {
	with (other) {
		image_index = 0;
		sprite_index = spr_player_lookdoor;
	}
}

if (other.sprite_index = spr_player_lookdoor && animationEnd()) {
	global.targetDoor = targetDoor;
	with (other) {
		state = states.normal;
		image_index = 0;
		sprite_index = spr_player_idle;
	}
	scr_gotoRoom(targetRoom);
}