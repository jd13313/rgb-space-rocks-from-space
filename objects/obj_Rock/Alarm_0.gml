var _last_color_index = array_length(obj_game.color_list);
var _random_index = random(_last_color_index);
var _color = array_get(obj_game.color_list, _random_index);

image_blend = _color;