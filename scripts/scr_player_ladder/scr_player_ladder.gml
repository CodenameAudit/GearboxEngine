function scr_player_ladder(){
	movespeed = 0;
    hsp = 0;
	
	if (keyboard_check_direct(vk_up))
        vsp = -6;
	else if (keyboard_check_direct(vk_down))
		vsp = 10;
	else vsp = 0
	
	if (vsp != 0)
		sprite_index = vsp < 0 ? spr_player_laddermove : spr_player_ladderdown
	else sprite_index = spr_player_ladder
	
	if (!place_meeting(x, y, obj_ladder)) {
		ladderBuffer = 20;
		state = states.jump;
		sprite_index = spr_player_fall;
		vsp = 0;
		exit;
	}
	
	if (keyboard_check_direct(ord("Z"))) {
		ladderBuffer = 20;
        vsp = (vsp >= 0) ? 5 : -9;
        sprite_index = spr_player_jump;
        image_index = 0;
		state = states.jump;
		exit;
	}
	
	if (keyboard_check_direct(vk_down) && grounded && place_meeting(x, y + abs(vsp), obj_solid)) {
		ladderBuffer = 20;
		image_index = 0;
		state = states.normal;
		exit;
	}
}