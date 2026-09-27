with (obj_player) {
	if (place_meeting(x, y, other) && keyboard_check_direct(vk_up) && grounded && state == states.normal && (image_index > 0 || global.key)) {
		state = states.enterWarp
		savedTRoom = other.targetRoom
		savedTDoor = other.targetDoor
		global.key = false;
		image_index = 0;
		other.image_index = 1;
		sprite_index = spr_player_victory;
		with (instance_create_depth(x, y, 0, obj_enemyBody)) {
			sprite_index = spr_lock;
			hsp = random_range(-3, 3);
			vsp = random_range(-5, 0);
		}
		exit;
	}
}