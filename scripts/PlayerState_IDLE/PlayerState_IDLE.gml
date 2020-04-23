if (vx != 0 || vy != 0){
state = PLAYERSTATE.MOVING;
}

if(keyHammer) state = PLAYERSTATE.HAMMER;
if(keySpike) state = PLAYERSTATE.SPIKE;
if(keyMeteor) state = PLAYERSTATE.METEOR;
