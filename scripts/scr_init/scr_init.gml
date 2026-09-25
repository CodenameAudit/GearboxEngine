function scr_init() {
	global.collect = 0;
	global.savedState = -4;
	global.savedHsp = 0;
	global.savedMovespeed = 0;
	global.savedXscale = 0;
	global.targetDoor = "A";
	
	enum states {
		normal,
		jump,
		ladder,
		mach2,
		mach3,
		climbwall,
		tumble,
		machslide,
		bump,
		suplexgrab,
		uppercut,
		noclip,
	}
	
	with (obj_player) {
		state = states.normal	
	}
}