//at button press
if(sprite_index != attack_spike){

	sprite_index = attack_spike;
	image_index = 0; //sets to first frame of the animation
}

show_debug_message(image_index);

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
		
//movement
x += vx;
y += vy;

//at end of animation
if (animation_end()){
	sprite_index = Test_Pin_Sprite;
	if (vx != 0 || vy != 0){
		state = PLAYERSTATE.MOVING;
	}
	if (vx == 0 && vy == 0){
	state = PLAYERSTATE.IDLE;
	}
}
