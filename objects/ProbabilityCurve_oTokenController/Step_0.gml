// Temporary room restart controls
if (keyboard_check_pressed(vk_space)) {
	room_restart();
}

// Exit step event if all tokens have been dropped
if (tokens_dropped >= tokens_to_drop) {
	return;
}

drop_token();

// Set mean values
mean_values[0] = mean(drop_count_values[0], drop_count_values[1]);
mean_values[total_slots - 1] = mean(drop_count_values[total_slots - 1], drop_count_values[total_slots - 2]);
for (var _i = 1; _i < total_slots - 1; _i++) {
	mean_values[_i] = mean(drop_count_values[_i - 1], drop_count_values[_i], drop_count_values[_i + 1]);
}
