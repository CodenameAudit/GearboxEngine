function scr_enemy_scared() {
	hsp = 0;
	vsp += 0.5;
	sprite_index = scaredSprite;
	
	if (scareBuffer > 0) 
		scareBuffer -= 1;
	else if (scareBuffer == 0) {
		state = enemyStates.walk;
		sprite_index = spr_slimemove;
		image_index = 0;
		exit;
	}
}