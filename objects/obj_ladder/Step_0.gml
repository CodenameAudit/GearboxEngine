with (obj_player) {
	if ((state == states.normal || state == states.jump || state == states.uppercut) && place_meeting(x, y + 6, other) && ladderBuffer <= 0 && (keyboard_check_direct(vk_up) || keyboard_check_direct(vk_down))) {
		x = other.x + 16;
		state = states.ladder
	}
}