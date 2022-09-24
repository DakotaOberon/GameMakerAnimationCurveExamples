// Basic fall code
if (done_falling) {
	return;
}

// Stop at bottom of the room
if (bbox_bottom + fall_speed >= room_height) {
	done_falling = true;
	return;
}

// Stop falling if there is a token below it
if (not place_empty(x, y + fall_speed, ProbabilityCurve_oToken)) {
	while (not collision_point(x, bbox_bottom + 1, ProbabilityCurve_oToken, 0, 1)) {
		y += 1;
	}
	done_falling = true;
	return;
}

// Fall
y += fall_speed;
