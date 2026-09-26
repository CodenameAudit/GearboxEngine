function scr_player_machslide() {
	scr_movePlayer();
	hsp = movespeed * xscale;
	movespeed = approach(movespeed, 0, 0.4);
	var _sMachTurn = [spr_player_machslideboost, spr_player_machslideboostfall, spr_player_machslideboost3, spr_player_machslideboost3fall]
	var _sMachTurnFall = [spr_player_machslideboostfall, spr_player_machslideboost3fall]
	var _sMachSkid = [spr_player_machslidestart, spr_player_machslide, spr_player_machslideend]
	
	if (array_contains(_sMachTurn, sprite_index)) {
		if (animationEnd() && !grounded && !array_contains(_sMachTurnFall, sprite_index)) {
			if sprite_index == spr_player_machslideboost3
				sprite_index = spr_player_machslideboost3fall;
			else sprite_index = spr_player_machslideboostfall;
		}
		else if animationEnd() && grounded {
			if (sprite_index == spr_player_machslideboost3 || sprite_index == spr_player_machslideboost3fall) {
				sprite_index = spr_player_mach3;
				image_index = 0;
				hsp = 0;
				xscale *= -1;
				movespeed = 12;
				state = states.mach3
			}
			else {
				sprite_index = spr_player_mach2;
				image_index = 0;
				hsp = 0;
				xscale *= -1;
				movespeed = 8;
				state = states.mach2
			}
			instance_destroy(obj_dashcloud);
		}
	}
	if (array_contains(_sMachSkid, sprite_index)) {
		if (animationEnd() && sprite_index == spr_player_machslidestart)
			sprite_index = spr_player_machslide;
		
		if (abs(movespeed) <= 0) {
			state = states.normal
			image_index = 0;
			exit;
		}
		
		if (grounded && (place_meeting(x + hsp, y - 16, obj_solid))) {
			sprite_index = spr_player_wallsplat;
			image_index = 0;
			state = states.bump;
			exit;
		}
	}
	
	if (!instance_exists(obj_dashcloud) && grounded) {
		with (instance_create_depth(x, y, 0, obj_dashcloud))
			image_xscale = other.xscale;
	}
	
	image_speed = 0.35;
}