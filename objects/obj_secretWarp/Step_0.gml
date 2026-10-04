if (instance_place(x, y, obj_player) && !global.secretExit) {
	if (!secretEntered && !exitSecret) {
		sprite_index = spr_secretportal_close;
		ds_list_add(global.saveList, id);
		with (obj_player) {
			savedTRoom = other.targetRoom;
			savedTDoor = "S";
			x = other.x;
			y = other.y;
			sprite_index = spr_player_hurt;
			state = states.enterWarp;
			lastRoom = room;
			secretID = id;
			exit;
		}
	}
	else {
		sprite_index = spr_secretportal_close;
		with (obj_player) {
			savedTRoom = lastRoom;
			savedTDoor = "S";
			x = other.x;
			y = other.y;
			sprite_index = spr_player_hurt;
			state = states.enterWarp;
			global.secretExit = true;
			exit;
		}
	}
}