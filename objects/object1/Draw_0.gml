/// @description Insert description here
// You can write your code in this editor
draw_set_colour(c_black);
draw_set_alpha(0.3);
draw_circle(x+3,y+3,25,false); //draw shadow of pin
draw_set_alpha(1.0);
draw_self();

//debug
if (global.debugmode){
	draw_set_colour(c_blue);
	draw_arrow(x,y,x+vx*10,y+vy*10,30);
	draw_set_colour(c_white);
	draw_text(x+25,y-25,"VX = " + string(vx) + "\n VY = " + string(vy));
	draw_set_colour(c_lime);
	draw_line_width(x,y,x+dcos(theta)*25,y-dsin(theta)*25,2);
	draw_set_colour(c_black);
}
