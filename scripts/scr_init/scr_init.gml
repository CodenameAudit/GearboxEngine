function scr_init(){
	global.key_left = false;
	global.key_right = false;
	global.savedState = -4;
	global.savedHsp = 0;
	global.savedMovespeed = 0;
	global.savedXscale = 0;
	global.targetDoor = "A";
	
	enum states {
		normal,
		jump,
		mach2,
		mach3,
		climbwall,
		tumble,
		machslide
	}
	
	with (obj_player) {
		state = states.normal	
	}
}