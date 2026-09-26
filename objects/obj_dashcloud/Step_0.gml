if (animationEnd()) instance_destroy();

switch (obj_player.state) {
	case states.mach2:
	case states.machslide:
		sprite_index = spr_dashcloud2;
		break;
	
	case states.mach3:
		sprite_index = spr_superdashcloud;
		break;
}
image_speed = 0.35;