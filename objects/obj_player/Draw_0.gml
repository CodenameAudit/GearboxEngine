if (state == states.taunt) {
	draw_sprite(spr_taunteffect, tauntEffect, x, y);
	
	if (tauntEffect < 10)
		tauntEffect++;
}
if (state == states.mach3) {
	draw_sprite_ext(spr_chargeeffect, chargeEffect, x, y, xscale, image_yscale, 0, c_white, 1);
	
	if (chargeEffect < 10)
		chargeEffect += 0.5;
	else {
		chargeEffect = 0;	
	}
}

draw_self();