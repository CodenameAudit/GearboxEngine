var _cam_x = camera_get_view_x(view_camera[0]);
var _cam_y = camera_get_view_y(view_camera[0]);
var lay_arr = layer_get_all();

for (var i = 0; i < array_length(lay_arr); i++)
{
    var lay = lay_arr[i];
    var lay_name = layer_get_name(lay);
    
    switch (lay_name)
    {
        case "Backgrounds_1":
            layer_x(lay, _cam_x * 0.25);
            layer_y(lay, _cam_y * 0.25);
            break;
		
		case "Backgrounds_2":
            layer_x(lay, _cam_x * 0.2);
            layer_y(lay, _cam_y * 0.2);
            break;
	} 
}