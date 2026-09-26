function scr_gotoRoom(arg0) {
	with (obj_player) {
		global.savedState = state;
	global.savedHsp = hsp;
	global.savedMovespeed = movespeed;
	global.savedXscale = xscale;
	}
	room_goto(arg0);
	instance_create_depth(0, 0, 0, obj_camera);
}
	
function animationEnd() {
	return floor(image_index) >= (image_number - 1);
}
	
function scr_movePlayer() {
	if keyboard_check_direct(vk_left) move = -1;
	else if keyboard_check_direct(vk_right) move = 1;
	else move = 0;
}
	
function scr_do_taunt() {
	if (keyboard_check_pressed(ord("C"))) {
		global.savedState = state;
		global.savedMovespeed = movespeed;
		global.savedSprite = sprite_index;
		sprite_index = spr_player_taunt;
		image_index = random_range(0, 12)
		tauntEffect = 0;
		tauntBuffer = 20;
		state = states.taunt;
	}
}

function scr_do_grab() {
	if (keyboard_check_pressed(ord("X"))) {
		if (!keyboard_check_direct(vk_up)) {
			sprite_index = (!grounded) ? spr_player_suplexgrabjumpstart : spr_player_suplexdash;
			if (movespeed < 8)
				movespeed = 8;
			
			with (instance_create_depth(x, y, 0, obj_dusteffect)) {
				sprite_index = spr_jumpdust;
				image_xscale = other.xscale;
			}
			
			image_index = 0;
			state = states.suplexgrab;
			exit;
		}
		else {
	        if (keyboard_check_direct(vk_shift))
	            movespeed = abs(hsp);
			
			movespeed = hsp;
			vsp = grounded ? -14 : -10;
			
			with (instance_create_depth(x, y, 0, obj_dusteffect))
				sprite_index = spr_highjumpcloud;
			
			image_index = 0;
	        sprite_index = spr_player_breakdanceuppercut;
			state = states.uppercut;
		}
	}
}
