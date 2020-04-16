/// @description 
//movement
//vx = (keyboard_check(ord("D")) - keyboard_check(ord("A")));
//vy = (keyboard_check(ord("S")) - keyboard_check(ord("W")));

//states
switch(state){
	case "IDLE":
		if (vx != 0 || vy != 0){
			state = "MOVING";
		}
	break;
	case "MOVING":
	
		ax = -vx * FRICTION;
		ay = -vy * FRICTION;
		ar = -vr * ROTATIONAL_FRICTION;
		
		vx+=ax;
		vy+=ay;
		vr+=ar;
		
		vx = dcos(-vr/15)*vx - dsin(-vr/15)*vy;
		vy = dsin(-vr/15)*vx + dcos(-vr/15)*vy;

		theta = (theta + vr) mod 360;
		image_angle = theta;
		
		if (vx == 0 && vy == 0){
			state = "IDLE";
		}
	break;
}

//movement

x += vx;
y += vy;

//debug
