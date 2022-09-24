// Draw blocks shadow to better sell 3rd Dimension
draw_sprite_ext(zAnimation_sBlockShadow, image_index, x, y, image_xscale, image_yscale, image_angle, c_black, 0.3);

// Draw block "above" shadow by a z offset on the y
draw_sprite_ext(sprite_index, image_index, x, y - z_offset, image_xscale, image_yscale, image_angle, c_white, 1);
