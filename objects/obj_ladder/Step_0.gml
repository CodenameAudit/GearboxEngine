with (obj_player) {
	if ((state == states.crouch || state == states.jump || state == states.uppercut) && ladderBuffer <= 0 && ((keyboard_check_direct(vk_up) && place_meeting(x, y - 10, other)) || (keyboard_check_direct(vk_down) && place_meeting(x, y + 10, other)))) {
		x = other.x + 16;
		state = states.ladder
	}
}