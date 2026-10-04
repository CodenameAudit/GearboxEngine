if (fadeStart && fadeAlpha < 1)
	fadeAlpha += 0.1;
else if (fadeClose && fadeAlpha > 0)
	fadeAlpha -= 0.1; 

if (fadeAlpha == 1 && fadeStart = true) {
	room_goto(targetRoom);
}
else if (fadeAlpha == 0 && fadeClose = true) {
	fadeClose = false;
	instance_destroy();
}