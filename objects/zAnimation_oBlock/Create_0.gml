// `direction` and `speed` need to be set if attempting to launch the block

// Slowdown of speed per frame
brake_force = 0.5;

// Length of animation from spawn
animation_length = 60;

// Measure of frames passed since creationn
frame_counter = 0;

// AnimationCurve channel data, change "bounce" to "smooth" or "lob" to see alternatives, or create your own
z_curve = animcurve_get_channel(zAnimation_acZOffset, "bounce");

// Current z offset value to sell the 3rd dimension
z_offset = 0;

// Function to run each step that sets z offset and increments frame counter
evaluate_z = function() {
	var _pos = frame_counter / animation_length;
	z_offset = animcurve_channel_evaluate(z_curve, _pos) * ZOFFSETMAGNITUDE;
	frame_counter++;
}
