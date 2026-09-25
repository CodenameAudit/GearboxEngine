function scr_player_noclip() {
	scr_movePlayer();
	var _noclipSpeed;
	hsp = movespeed;
	usesCollision = false;
	
	if (move != 0) movespeed = (7 * move)
	else movespeed = 0;
	
	if (keyboard_check_direct(vk_up)) {
		vsp = -7
	}
	else if (keyboard_check_direct(vk_down)) {
		vsp = 7
	}
	else vsp = 0
	
	_noclipSpeed = (keyboard_check_direct(vk_shift)) ? 2 : 1
	
	if (keyboard_check_pressed(ord("Z"))) {
		state = states.jump;
		usesCollision = true;
		exit;
	}
}