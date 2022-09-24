// Color legend. Code is good enough for example
var _legend_size = 16;
draw_rectangle_color(0, 0, _legend_size, _legend_size, c_red, c_red, c_red, c_red, 0);
draw_text(_legend_size + 8, 0, "Actual Count");
draw_rectangle_color(0, _legend_size * 2, _legend_size, _legend_size * 3, c_blue, c_blue, c_blue, c_blue, 0);
draw_text(_legend_size + 8, _legend_size * 2, "Mean Value");
draw_rectangle_color(0, _legend_size * 4, _legend_size, _legend_size * 5, c_green, c_green, c_green, c_green, 0);
draw_text(_legend_size + 8, _legend_size * 4, "Expected Value");

// Slot counts
var _line_amplitude = 10;

// Draw drop counts line graph
for (var _i = 1; _i < total_slots; _i++) {
	var _x1 = (_i + 1) * token_width;
	var _y1 = room_height - (drop_count_values[_i] * _line_amplitude);
	var _x2 = _i * token_width;
	var _y2 = room_height - (drop_count_values[_i - 1] * _line_amplitude);

	draw_line_width_color(_x1, _y1, _x2, _y2, 3, c_red, c_red);
}

// Draw mean values line graph
for (var _i = 1; _i < total_slots; _i++) {
	var _x1 = (_i + 1) * token_width;
	var _y1 = room_height - (mean_values[_i] * _line_amplitude);
	var _x2 = _i * token_width;
	var _y2 = room_height - (mean_values[_i - 1] * _line_amplitude);

	draw_line_width_color(_x1, _y1, _x2, _y2, 3, c_blue, c_blue);
}

// Draw expected values line graph
for (var _i = 1; _i < total_slots; _i++) {
	var _x1 = (_i + 1) * token_width;
	var _y1 = room_height - (expected_values[_i] * _line_amplitude);
	var _x2 = _i * token_width;
	var _y2 = room_height - (expected_values[_i - 1] * _line_amplitude);

	draw_line_width_color(_x1, _y1, _x2, _y2, 3, c_green, c_green);
}
