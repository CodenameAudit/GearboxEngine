switch (state) {
	case enemyStates.idle:
		//idlehere
		break;
	
	case enemyStates.walk:
		scr_enemy_walk();
		break;
	
	case enemyStates.scared:
		//scaredhere
		break;
}

image_speed = 0.35;
image_xscale = xscale;
scr_collision(); 