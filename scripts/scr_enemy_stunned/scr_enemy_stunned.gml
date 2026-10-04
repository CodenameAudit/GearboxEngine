function scr_enemy_stunned() {
	if (grounded)
		hsp = approach(hsp, 0, 0.3);
	vsp += 0.5;
	sprite_index = stunSprite;
	
	if (scareBuffer > 0) 
		scareBuffer -= 1;
	else if (scareBuffer == 0) {
		state = enemyStates.walk;
		exit;
	}
}