/// @description 
//variables
vx = 0; //velocity
vy = 0;
vr = 0;
ax = 0; //acceleration
ay = 0;
ar = 0;
theta = 0;
vr = 0;


//properties
move_speed = 1;
MAX_VELOCITY = 100.00;
FRICTION = 0.05;
ROTATIONAL_FRICTION = 0.05;
MASS = 1;

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
collisionangle = 0;
draw_set_alpha(1.0);
draw_set_color(c_white); 

impulsex=0;
impulsey=0;