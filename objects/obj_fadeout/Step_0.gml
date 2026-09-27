if (fadeStart == true && fadeShit < 1) {
	fadeShit += 0.1;
}
else if (fadeClose == true && fadeShit > 0) {
	fadeShit -= 0.1;
}

if (fadeShit == 1 && fadeStart = true) {
	fadeStart = false;
	fadeClose = true;
	scr_gotoRoom(targetRoom)
}
else if (fadeShit == 0 && fadeClose = true) {
	fadeClose = false;
	instance_destroy();
}