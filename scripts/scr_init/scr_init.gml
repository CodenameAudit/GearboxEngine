function scr_init() {
	global.collect = 0;
	global.savedSprite = -4;
	
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
		taunt,
		crouch,
		freefall,
		freefallland
	}
	
	enum enemyStates {
		idle,
		walk,
		scared
	}

	with (obj_player) {
		state = states.normal
	}
}