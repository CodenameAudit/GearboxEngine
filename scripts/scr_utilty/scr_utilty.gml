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
	
	function scr_movePlayer() {
		if keyboard_check_direct(vk_left) move = -1;
		else if keyboard_check_direct(vk_right) move = 1;
		else move = 0;
	}
	
	function scr_do_taunt() {
		exit;	
	}
	
	function scr_do_grab() {
		exit;	
	}
}
