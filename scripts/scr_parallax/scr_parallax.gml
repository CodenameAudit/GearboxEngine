function scr_parallax(){
	var _cam_x = camera_get_view_x(view_camera[0]);
	var _cam_y = camera_get_view_y(view_camera[0]);
	var _waveBG = wave(50, 0, 7.5, 0);
	var layerArray = layer_get_all();

	for (var i = 0; i < array_length(layerArray); i++)
	{
	    var lay = layerArray[i];
	    var layerName = layer_get_name(lay);
    
	    switch (layerName)
	    {
	        case "Backgrounds_1":
	            layer_x(lay, _cam_x * 0.25);
	            layer_y(lay, _cam_y * 0.25);
	            break;
		
			case "Backgrounds_2":
	            layer_x(lay, _cam_x * 0.2);
	            layer_y(lay, _cam_y * 0.2);
	            break;
			
			case "Backgrounds_3":
	            layer_x(lay, _cam_x * 0.15);
	            layer_y(lay, _cam_y * 0.15);
	            break;
        
	        case "Backgrounds_H1":
	            layer_x(lay, _cam_x * 0.11);
	            layer_y(lay, _cam_y);
	            break;
			
			case "Backgrounds_H2":
	            layer_x(lay, _cam_x * 0.08);
	            layer_y(lay, _cam_y);
	            break;
			
			case "Backgrounds_H3":
	            layer_x(lay, _cam_x * 0.02);
	            layer_y(lay, _cam_y);
	            break;
        
	        case "Backgrounds_sky":
	            layer_x(lay, _cam_x * 0.25);
	            layer_y(lay, _cam_y * 0.25);
	            break;
			
			case "Backgrounds_sky1":
	            layer_x(lay, _cam_x * 0.15);
	            layer_y(lay, _cam_y * 0.15);
	            break;
        
	        case "Backgrounds_sky2":
	            layer_x(lay, _cam_x);
	            layer_y(lay, _cam_y);
	            break;
			
			case "Backgrounds_scroll":
	            layer_x(lay, (_cam_x + scrollSpeedH) * 0.5);
	            layer_y(lay, (_cam_y + scrollSpeedV) * 0.5);
				scrollSpeedH += layer_get_hspeed(lay);
				scrollSpeedV += layer_get_vspeed(lay);
	            break;
			
			case "Backgrounds_scroll1":
	            layer_x(lay, (_cam_x + scrollSpeed2H) * 0.35);
	            layer_y(lay, (_cam_y + scrollSpeed2V) * 0.35);
				scrollSpeed2H += layer_get_hspeed(lay);
				scrollSpeed2V += layer_get_vspeed(lay);
	            break;
			
			case "Backgrounds_scroll2":
	            layer_x(lay, (_cam_x * 0.15) + scrollSpeed3H);
	            layer_y(lay, (_cam_y * 0.15) + scrollSpeed3V);
				scrollSpeed3H += layer_get_hspeed(lay);
				scrollSpeed3V += layer_get_vspeed(lay);
	            break;
				
			case "Backgrounds_wave":
	            layer_x(lay, _cam_x * 0.85);
	            layer_y(lay, (_cam_y * 0.85) + _waveBG);
	            break;
			
			case "Backgrounds_wave1":
	            layer_x(lay, _cam_x * 0.5);
	            layer_y(lay, (_cam_y * 0.5) + _waveBG);
	            break;
			
			case "Backgrounds_wave2":
	            layer_x(lay, _cam_x * 0.35);
	            layer_y(lay, (_cam_y * 0.35) + _waveBG);
	            break;
		}
	}
}