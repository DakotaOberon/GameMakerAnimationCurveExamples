/**
In this example, I use animation curves to control random outcome

This could be used along with item weights
There are a few other methods out there for weighted randomness, but I find using the GUI makes it a bit easier to visualize
**/

// Randomize seed
randomize();

// Amount to shift tokens from the left
token_offset = 16;

// Draw text in center-ish
text = {
	x: (room_width / 2) - 16,
	y: (room_height / 2)
}

// Tokens width, used to determine total slots
token_width = sprite_get_width(ProbabilityCurve_sToken);

total_slots = floor((room_width - token_offset) / token_width);

// Total tokens to drop
tokens_to_drop = 2000;

// Which animation curve to use
animation_to_play = choose("linear", "exponential", "u_shape");

animation_curve_channel = animcurve_get_channel(ProbabilityCurve_acProbability, animation_to_play);

// Function to handle curve evaluation
evaluate_curve = function(_at) {
	return clamp(animcurve_channel_evaluate(animation_curve_channel, _at), 0, 0.9999);
}

// Get slot index of array based on the value
get_slot = function(_value) {
	return floor(total_slots * _value);
}

// Arrays of point values to graph
mean_values = array_create(total_slots, 0);
drop_count_values = array_create(total_slots, 0);
expected_values = array_create(total_slots, 0);

// Get expected values
for (var _i = 0; _i < tokens_to_drop; _i++) {
	var _value = evaluate_curve(_i / tokens_to_drop);

	var _slot = get_slot(_value);

	expected_values[_slot] += 1;
}

// Function to handle random token dropping
drop_token = function() {
	var _value = evaluate_curve(random(1));

	var _slot = get_slot(_value);

	drop_count_values[_slot] += 1;

	// Set every 5th token to red
	var _instance_image_blend = c_white;
	if ((drop_count_values[_slot] % 5) == 0) {
		_instance_image_blend = c_red;	
	}

	var _actual_x = ((_slot) * token_width) + token_offset;
	instance_create_layer(_actual_x, 0, "Instances", ProbabilityCurve_oToken, { image_blend: _instance_image_blend });

	// Increment tokens
	tokens_dropped++
}

tokens_dropped = 0;
