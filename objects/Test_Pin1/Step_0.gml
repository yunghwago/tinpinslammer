/// @description 
//movement
//vx = (keyboard_check(ord("D")) - keyboard_check(ord("A")));
//vy = (keyboard_check(ord("S")) - keyboard_check(ord("W")));
//binds
keyHammer = keyboard_check_pressed(ord("Q"));
keySpike = keyboard_check_pressed(ord("W"));
keyMeteor = keyboard_check_pressed(ord("E"));

//state machine handler
switch(state){
	case PLAYERSTATE.IDLE: PlayerState_IDLE(); break;
	case PLAYERSTATE.MOVING: PlayerState_MOVING(); break;
	case PLAYERSTATE.HAMMER: PlayerState_HAMMER(); break;
	case PLAYERSTATE.SPIKE: PlayerState_SPIKE(); break;
	case PLAYERSTATE.METEOR: PlayerState_METEOR(); break;	
}

//debug

//collision handling

var bbox_side; //variable to get which side of the pin we need to check for

//horizontal collision
if (vx < 0 ) bbox_side = bbox_left; else if (vx >= 0) bbox_side = bbox_right;
if(tilemap_get_at_pixel(tilemap, bbox_side+vx, bbox_top) != 0) ||(tilemap_get_at_pixel(tilemap, bbox_side+vx, bbox_bottom) != 0)
{
	vx = -(vx);
}

//vertical collision
if (vy < 0 ) bbox_side = bbox_top; else if (vy >= 0) bbox_side = bbox_bottom;
if(tilemap_get_at_pixel(tilemap, bbox_left, bbox_side+vy) != 0) ||(tilemap_get_at_pixel(tilemap, bbox_right, bbox_side+vy) != 0)
{
	show_debug_message("yaaa");
	vy = -(vy);
}

//if (vy < 0 ) bbox_side = bbox_down; else if (vx > 0) bbox_side = bbox_right;