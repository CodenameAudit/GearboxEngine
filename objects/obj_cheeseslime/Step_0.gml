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
	
	case enemyStates.stunned:
		scr_enemy_stunned();
		break;
}

var _player = obj_player;

if (instance_place(x, y - 1, obj_player) && (_player.state == states.mach3 || _player.state == states.suplexgrab || _player.state == states.superjump || _player.state == states.freefall ||(_player.state == states.machslide && _player.sprite_index == spr_player_machslideboost3))) {
	instance_destroy();
}

if (instance_place(x, y - 1, obj_player) && (_player.state == states.mach2 || _player.state == states.tumble || (_player.state == states.jump && _player.vsp >= 0) || (_player.state == states.machslide && _player.sprite_index != spr_player_machslideboost3))) {
	with (_player) {
		if (state == states.jump) {
			vsp = -8;
			sprite_index = spr_player_jump;
			image_index = 0;
		}
	}
	vsp = -3;
	scareBuffer = 125;
	xscale = -(_player.xscale);
	hsp = (_player.state == states.jump) ? 5 * -xscale : _player.movespeed * (1.15 * -xscale);
	sprite_index = stunSprite;
	state = enemyStates.stunned;
}

image_speed = 0.35;
image_xscale = xscale;
scr_collision();