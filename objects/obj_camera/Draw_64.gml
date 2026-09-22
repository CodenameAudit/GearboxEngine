var devWindow = []
    array_push(devWindow, "Gearbox Testing. Thank you chez :)");
    array_push(devWindow, string("FPS: {0}", fps));
    array_push(devWindow, string("ROOM: {0}", room_get_name(room)));
    array_push(devWindow, string("Real FPS: {0}", fps_real));
    
    if (instance_exists(obj_player))
    {
        array_push(devWindow, string("X: {0}", obj_player.x));
        array_push(devWindow, string("Y: {0}", obj_player.y));
        array_push(devWindow, string("Player move speed: {0}", obj_player.hsp));
        array_push(devWindow, string("Player state: {0}", obj_player.state));
        array_push(devWindow, string("Player sprite: {0}", sprite_get_name(obj_player.sprite_index)));
    }
    
    draw_set_halign(fa_left);
    draw_set_alpha(0.5);
    draw_set_color(c_black);
    var _width = 0;
    var _height = 0;
    
    for (var i = 0; i < array_length(devWindow); i++)
    {
        if (string_width(devWindow[i]) > _width)
            _width = string_width(devWindow[i]);
        
        _height += string_height(devWindow[i]);
    }
    
    var _x = 20;
    var _y = 200 - _height;
    draw_rectangle(_x - 2, _y - 2, _x + _width + 2, _y + _height + 2, false);
    draw_set_alpha(0.85);
    draw_set_color(c_white);
    
    for (var i = 0; i < array_length(devWindow); i++)
        draw_text(_x, _y + (string_height("A") * i), devWindow[i]);

draw_set_alpha(1);
draw_set_color(c_white);