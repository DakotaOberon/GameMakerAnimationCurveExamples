// Set blocks spawn location
if (mouse_check_button_pressed(mb_left)) {
	launch_coords.draw = true;
	launch_coords.x1 = mouse_x;
	launch_coords.y1 = mouse_y;
}

// Set second coordinates for drawing in the direction of the mouse
if (mouse_check_button(mb_left)) {
	launch_coords.direction = point_direction(launch_coords.x1, launch_coords.y1, mouse_x, mouse_y) + 180;
	launch_coords.speed = (point_distance(launch_coords.x1, launch_coords.y1, mouse_x, mouse_y) * power_multiplier);

	launch_coords.x2 = launch_coords.x1		+	lengthdir_x(	launch_coords.speed * 5,	launch_coords.direction - 180	);
	launch_coords.y2 = launch_coords.y1		+	lengthdir_y(	launch_coords.speed * 5,	launch_coords.direction - 180	);
}

// Create block with direction and speed values
if (mouse_check_button_released(mb_left)) {
	instance_create_layer(launch_coords.x1, launch_coords.y1, "Instances", zAnimation_oBlock, { direction: launch_coords.direction, speed: launch_coords.speed });

	launch_coords.draw = false;
}
