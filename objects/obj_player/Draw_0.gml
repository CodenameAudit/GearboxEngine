if (state == states.taunt) {
	draw_sprite(spr_taunteffect, tauntEffect, x, y);
	
	if (tauntEffect < 10)
		tauntEffect++;
}

draw_self();