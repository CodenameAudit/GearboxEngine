function scr_parallax(){
	var _cam_x = camera_get_view_x(view_camera[0]);
	var _cam_y = camera_get_view_y(view_camera[0]);
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
			
	        case "Backgrounds_Ground3":
	            layer_x(lay, _cam_x * 0.16);
	            break;
        
	        case "Backgrounds_H1":
	            layer_x(lay, _cam_x * 0.11);
	            layer_y(lay, _cam_y);
	            break;
        
	        case "Backgrounds_sky":
	            layer_x(lay, _cam_x * 0.25);
	            layer_y(lay, _cam_y * 0.25);
	            break;
        
	        case "Backgrounds_sky2":
	            layer_x(lay, _cam_x);
	            layer_y(lay, _cam_y);
	            break;
		}
	}
}