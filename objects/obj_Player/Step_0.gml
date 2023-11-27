if keyboard_check(vk_up) {
	motion_add(image_angle, 0.1);
}

if keyboard_check(vk_left) {
	image_angle += 4;
}

if keyboard_check(vk_right) {
	image_angle -= 4;
}

move_wrap(true, true, 0);

if keyboard_check(vk_space) {
	instance_create_layer(x, y, "Instances", obj_Bullet);
	
	motion_add(image_angle + 180, 0.05);
}

if keyboard_check_pressed(vk_shift) {
	var _last_color_index = array_length(obj_game.color_list) - 1;
	
	if (_last_color_index > obj_game.selected_color_index) {
		obj_game.selected_color_index++;
	} else {
		obj_game.selected_color_index = 0;
	}
	show_debug_message(_last_color_index);
	show_debug_message(obj_game.selected_color_index);

	image_blend = array_get(obj_game.color_list, obj_game.selected_color_index);

}