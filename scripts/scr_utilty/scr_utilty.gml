function scr_gotoRoom(arg0) {
	room_goto(arg0);
}

function scr_afterimageMach3() {
	if (mach3Effect > 0)
		mach3Effect--;
	else if (mach3Effect == 0) {
		instance_create_depth(x, y, 0, obj_mach3afterimage);
		mach3Effect = 5;	
	}
}

function animationEnd() {
	return floor(image_index) >= (image_number - 1);
}