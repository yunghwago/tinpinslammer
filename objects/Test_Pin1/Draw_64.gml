/// @description Display debug information about the object on screen
// You can write your code in this editor
if (global.debugmode){
	draw_set_color(c_white);
	//(0,0,"STATE = " + state);
	draw_text(0,20,"VX = " + string(vx) + " VY = " + string(vy));
	draw_text(0,40,"X = " + string(x) + " Y = " + string(y));
	draw_text(0,60,"ANGLE = " + string(theta));
	draw_text(0,80,"ROTATIONAL SPEED = " + string(vr));
}