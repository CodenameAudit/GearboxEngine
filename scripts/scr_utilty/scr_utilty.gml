function scr_afterimageController(arg0) {
	switch (arg0) {
		case "blur":
			if (afterimageBuffer > 0)
				afterimageBuffer--;
			else if (afterimageBuffer == 0) {
				instance_create_depth(x, y, 0, obj_blurafterimage);
				afterimageBuffer = 1;	
			}
			break;
		
		case "mach3":
			if (afterimageBuffer > 0)
				afterimageBuffer--;
			else if (afterimageBuffer == 0) {
				instance_create_depth(x, y, 0, obj_mach3afterimage);
				afterimageBuffer = 5;
			}
			break;
		default:
			break;
	}
}
function animationEnd() {
	return floor(image_index) >= (image_number - 1);
}