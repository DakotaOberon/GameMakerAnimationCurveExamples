// Draw trace lines. This code alone won't draw correctly if room size and display size is different
if (launch_coords.draw) {
	draw_line_width_color(	launch_coords.x1,	launch_coords.y1 - ZOFFSETMAGNITUDE,	launch_coords.x1,	launch_coords.y1,						line_width,	 c_red,		c_red	);
	draw_line_width_color(	launch_coords.x1,	launch_coords.y1 - ZOFFSETMAGNITUDE,	launch_coords.x2,	launch_coords.y2 - ZOFFSETMAGNITUDE,	line_width,	 c_white,	c_white	);
}
