function scr_init() {
	global.collect = 0;
	global.escape = false;
	global.key = false;
	global.secretRoom = false;
	global.secretExit = false;
	global.saveList = ds_list_create();
	global.debugMode = true;
	
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
		exitDoor,
		taunt,
		crouch,
		freefall,
		freefallland,
		superjumpPrep,
		superjump,
		verticalSlam
	}
	
	enum enemyStates {
		idle,
		walk,
		scared,
		stunned
	}

	with (obj_player) {
		state = states.normal
	}
}