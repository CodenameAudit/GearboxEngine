function scr_player_titlescreen() {
	if keyboard_check_direct(vk_left) move = -1;
	else if keyboard_check_direct(vk_right) move = 1;
	else move = 0;
	hsp = 0;
	vsp = 0;
}