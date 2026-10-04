var _destroyHorizontalStates = [states.mach3]
var _destroyVerticalStates = [states.freefall, states.superjump]

with (obj_player) {
	if ((place_meeting(x + (movespeed * xscale), y, other)) && array_contains(_destroyHorizontalStates, state)) {
		instance_destroy(other)
	}
	else if ((place_meeting(x, y + vsp, other)) && array_contains(_destroyVerticalStates, state) && (freefallSmash >= 10 || sprite_index == spr_player_presentbox)) {
		instance_destroy(other)
	}
}
