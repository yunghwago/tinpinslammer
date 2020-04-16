/// @description 
//variables
vx = 0;
vy = 0;
vr = 0;

ax = 0;
ay = 0;
ar = 0;

theta = 0;
vrotation = 0;

//properties
move_speed = 1;
MAX_VELOCITY = 100.00;
FRICTION = 0.05;
ROTATIONAL_FRICTION = 0.05;
MASS = 1.00;

//states
/*
	IDLE,
	MOVING,
	FALLING,
	STUN,
	COLLISION
*/
state = "IDLE";

//debug

counter = 1;
debugbutton = false;