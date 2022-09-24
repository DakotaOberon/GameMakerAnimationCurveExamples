// Evaluate z offset
evaluate_z();

// Reduce speed to no less than 0
speed = max(speed - brake_force, 0);

// Simple depth handling, doesn't do well in unaltered isometric view
depth = -y;
