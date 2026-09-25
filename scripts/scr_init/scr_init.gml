function scr_init() {
	global.collect = 0;
	global.savedMovespeed = 0;
	global.savedXscale = 0;
	global.savedSprite = -4;
	global.savedState = -4;
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
		enterWarp,
		taunt
	}
	
	with (obj_player) {
		state = states.normal	
	}
}