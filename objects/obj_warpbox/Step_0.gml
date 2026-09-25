scr_utilty();

with (obj_player)
	if (keyboard_check_pressed(vk_up) && place_meeting(x, y - 32, other) && other.image_yscale == -1) {
		state = states.normal;
		image_index = 0;
		sprite_index = spr_player_idle;
		scr_gotoRoom(other.targetRoom);
		exit;
	}
	else if (keyboard_check_pressed(vk_down) && place_meeting(x, y + 32, other) && other.image_yscale == 1) {
		state = states.jump;
		image_index = 0;
		sprite_index = spr_player_fall;
		scr_gotoRoom(other.targetRoom);
		exit;
	}