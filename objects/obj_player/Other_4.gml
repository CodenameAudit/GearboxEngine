if (global.savedState != -4) {
	state = global.savedState;
	hsp = global.savedHsp;
	movespeed = global.savedMovespeed;
	xscale = global.savedXscale;
	switch (global.targetDoor) {
		case "A":
			with (obj_doorA) {
				other.x = x;
				other.y = y;	
			}
			break;
		
		case "B":
			with (obj_doorB) {
				other.x = x;
				other.y = y;	
			}
			break;
		
		case "C":
			with (obj_doorC) {
				other.x = x;
				other.y = y;	
			}
			break;
		
		case "D":
			with (obj_doorD) {
				other.x = x;
				other.y = y;	
			}
			break;
		
		case "E":
			with (obj_doorE) {
				other.x = x;
				other.y = y;	
			}
			break;
		
		case "F":
			with (obj_doorF) {
				other.x = x;
				other.y = y;	
			}
			break;
	}
}