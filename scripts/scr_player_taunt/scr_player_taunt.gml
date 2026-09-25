function scr_player_taunt(){
	hsp = 0;
	movespeed = 0;
	vsp = 0;
	image_speed = 0;
	
	if (tauntBuffer != 0)
		tauntBuffer--;
	else if (tauntBuffer == 0) {
		image_index = 0;
		sprite_index = global.savedSprite;
		movespeed = global.savedMovespeed;
		state = global.savedState;
		exit;
	}
}