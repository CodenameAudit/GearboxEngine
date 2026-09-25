switch (state) {
	case states.normal:
		scr_player_normal();
		break;
	
	case states.jump:
		scr_player_jump();
		break;
	
	case states.noclip:
		scr_player_noclip();
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
		
	case states.bump:
		scr_player_bump();
		break;
	
	case states.suplexgrab:
		spr_player_suplexgrab();
		break;
	
	case states.uppercut:
		scr_player_uppercut();
		break;
	
	case states.ladder:
		scr_player_ladder();
		break;
	
	case states.enterWarp:
		scr_player_enterWarp();
		break;
	
	case states.taunt:
		scr_player_taunt();
		break;
	
	case states.crouch:
		scr_player_crouch();
		break;
}

var _crouchStates = [states.crouch, states.tumble]
if (array_contains(_crouchStates, state))
	mask_index = spr_crouchmask;	
else mask_index = spr_player_mask;	

switch (state) {
	default:
		grav = 0.5;
}

if (y > room_height)
	scr_gotoRoom(room);

if (ladderBuffer != 0)
	ladderBuffer--;	

image_xscale = xscale;
scr_collision();