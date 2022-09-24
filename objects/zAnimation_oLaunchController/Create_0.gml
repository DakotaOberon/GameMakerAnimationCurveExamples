/**
In this example, I use animation curves to control the bounce and fall of the boxes

Animation curves are a great way to control gradual acceleration
**/


// Value to multiply z offset from animation curve by
#macro ZOFFSETMAGNITUDE 100

// Keeps track of values used in launching and drawing
launch_coords = {
	x1:			0,
	y1:			0,
	x2:			0,
	x2:			0,
	direction:	0,
	speed:		0,
	draw:		false
}

// Drawing line width
line_width = 3;

// Multiply drawn line distance by this value to get speed
power_multiplier = 0.05;
