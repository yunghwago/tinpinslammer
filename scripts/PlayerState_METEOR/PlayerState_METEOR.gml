if (vx != 0 || vy != 0){
state = PLAYERSTATE.MOVING;
}

if (vx == 0 && vy == 0){
	state = PLAYERSTATE.IDLE;
}
