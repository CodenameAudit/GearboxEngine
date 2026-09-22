function scr_utilty(){
	function scr_gotoRoom(arg0) {
		with (obj_player) {
			global.savedState = state;
			global.savedHsp = hsp;
			global.savedMovespeed = movespeed;
			global.savedXscale = xscale;
		}
		room_goto(arg0);
		instance_create_depth(0, 0, 0, obj_camera);
	}
}
