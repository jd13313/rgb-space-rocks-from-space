if(other.image_blend == image_blend) {
	instance_destroy(other);

	effect_create_above(ef_explosion, x, y, 1, image_blend);
	direction = random(360);
	ds_map_replace(obj_game.scores, image_blend, obj_game.scores[? image_blend] + 1);

	if sprite_index == spr_rock_big {
		sprite_index = spr_rock_small;
		var _copy = instance_copy(true);
		_copy.image_blend = image_blend;
	} 

	else if instance_number(obj_Rock) < 12 {
		sprite_index = spr_rock_big;
		x = -100;
	}

	else {
		instance_destroy();
	}
}


