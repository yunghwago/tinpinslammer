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
	state = PLAYERSTATE.IDLE;
}

//movement
x += vx;
y += vy;

if(keyHammer) state = PLAYERSTATE.HAMMER;
if(keySpike) state = PLAYERSTATE.SPIKE;
if(keyMeteor) state = PLAYERSTATE.METEOR;
