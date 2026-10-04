if (fadeStart && !fadeClose && room != rm_init) {
	with (obj_player) {
		state = other.savedState;
		movespeed = other.savedMovespeed;
		xscale = other.savedXscale;
		
		targetDoor = other.targetDoor
		switch (obj_fadeout.targetDoor) {
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
		
		case "S":
			with (obj_secretExit) {
				other.x = x+16;
				other.y = y-14;	
			}
			break;
		}
	}
	fadeStart = false;
	fadeClose = true;
}