function scr_init(){
	global.key_left = false;
	global.key_right = false;
	
	enum states {
		normal,
		jump,
		mach2,
		mach3
	}
	
	with (obj_player) {
		state = states.normal	
	}
}