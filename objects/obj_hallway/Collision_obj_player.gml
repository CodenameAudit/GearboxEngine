if (!instance_exists(obj_fadeout)) {
	with (instance_create_depth(x, y, 0, obj_fadeout)) {
		targetRoom = other.targetRoom;
		targetDoor = other.targetDoor;
		savedState = obj_player.state
		savedMovespeed = obj_player.movespeed
		savedXscale = obj_player.xscale
	}
}