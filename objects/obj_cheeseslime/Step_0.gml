switch (state) {
	case enemyStates.idle:
		scr_enemy_idle();
		break;
	
	case enemyStates.walk:
		scr_enemy_walk();
		break;
	
	case enemyStates.scared:
		scr_enemy_scared();
		break;
}

image_speed = 0.35;
image_xscale = xscale;
scr_collision(); 