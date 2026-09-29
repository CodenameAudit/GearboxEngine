var _col = image_blend;
var _col2 = merge_color(image_blend,c_black,1);
_col = [ color_get_red(_col) / 255, color_get_green(_col) / 255, color_get_blue(_col) / 255];
_col2 = [ color_get_red(_col2) / 255, color_get_green(_col2) / 255, color_get_blue(_col2) / 255 ];
shader_set(shd_fullcolor);
shader_set_uniform_f_array(other.uniL, _col);
shader_set_uniform_f_array(other.uniD, _col2);
draw_self();
shader_reset();
