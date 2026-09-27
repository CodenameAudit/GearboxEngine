if (global.savedState != -4) {
	state = global.savedState;
	hsp = global.savedHsp;
	movespeed = global.savedMovespeed;
	xscale = global.savedXscale;
	switch (global.targetDoor) {
		case "A":
			with (obj_doorA) {
				other.x = x+16;
				other.y = y-14;	
			}
			break;
		
		case "B":
			with (obj_doorB) {
				other.x = x+16;
				other.y = y-14;		
			}
			break;
		
		case "C":
			with (obj_doorC) {
				other.x = x+16;
				other.y = y-14;		
			}
			break;
		
		case "D":
			with (obj_doorD) {
				other.x = x+16;
				other.y = y-14;		
			}
			break;
		
		case "E":
			with (obj_doorE) {
				other.x = x+16;
				other.y = y-14;		
			}
			break;
		
		case "F":
			with (obj_doorF) {
				other.x = x+16;
				other.y = y-14;		
			}
			break;
	}
	if place_meeting(x, y, obj_warpbox)
		y += 15
}