camera_set_view_size(view_camera[0], 1024, 576);

var cam_width = camera_get_view_width(view_camera[0]);
var cam_height = camera_get_view_height(view_camera[0]);
			
var cam_x, cam_y;

if instance_exists(obj_player) {
	cam_x = (obj_player.x - (cam_width / 2));
	cam_y = obj_player.y - (cam_height / 2) - 50;
	cam_x = clamp(cam_x, 0, room_width - cam_width);
	cam_y = clamp(cam_y, 0, room_height - cam_height);
}
			
camera_set_view_pos(view_camera[0], cam_x, cam_y);