function scr_player_jump() {
	scr_movePlayer();
	hsp = movespeed;
	var _spriteShit = [spr_player_jump, spr_player_suplexcancel]
	
	if move != 0 && !place_meeting(((x + hsp) * move), y, obj_solid){
		movespeed = 7 * move
		xscale = move
	}
	else movespeed = 0;
	
	if (grounded) {
		state = states.normal
		sprite_index = spr_player_land;
	}
	
	if (array_contains(_spriteShit, sprite_index) && animationEnd())
		sprite_index = spr_player_fall;
	
	scr_do_grab();
	scr_do_taunt();
	image_speed = 0.35;
}