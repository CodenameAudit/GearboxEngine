if (global.escape) {
	image_alpha = 0.4;
	mask_index = spr_null;
	sprite_index = spr_escapeBlock;
}
else {
	image_alpha = 1;
	mask_index = spr_solid;
	sprite_index = spr_escapeBlockActive;
}
