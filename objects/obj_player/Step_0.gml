switch (state) {
	case states.normal:
		scr_player_normal();
		break;
	
	case states.jump:
		scr_player_jump();
		break;
	
	case states.titlescreen:
		scr_player_titlescreen();
		break;
	
	case states.mach2:
		scr_player_mach2();
		break;
	
	case states.mach3:
		scr_player_mach3();
		break;
	
	case states.climbwall:
		scr_player_climbwall();
		break;
	
	case states.tumble:
		scr_player_tumble();
		break;
	
	case states.machslide:
		scr_player_machslide();
		break;
}

var _crouchStates = [states.tumble]
if (array_contains(_crouchStates, state))
	mask_index = spr_crouchmask;	
else mask_index = spr_player_mask;	

switch (state) {
	default:
		grav = 0.5;
}

if (y > room_height)
	scr_gotoRoom(room);

image_xscale = xscale;
scr_collision();