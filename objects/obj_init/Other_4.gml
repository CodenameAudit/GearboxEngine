scr_init();
scr_utilty();
with (instance_create_depth(x, y, 0, obj_fadeout)) {
	fadeStart = true;
	targetRoom = rm_testingGrounds;
	targetDoor = "A";
	savedState = states.normal
	savedMovespeed = 0
	savedXscale = 1
}