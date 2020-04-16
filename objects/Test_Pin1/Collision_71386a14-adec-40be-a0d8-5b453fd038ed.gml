/// @description Insert description here
// You can write your code in this editor

//dont overlap with the other pin
x = object1.x - (sprite_height)*dcos(point_direction(x,y,object1.x,object1.y));
y = object1.y - (sprite_height)*-dsin(point_direction(x,y,object1.x,object1.y));

//normalized normal vectors
var nx = (object1.x - x)/point_distance(object1.x,object1.y,x,y); 
var ny = (object1.y - y)/point_distance(object1.x,object1.y,x,y);

// normalized tangent vector
var tx = -ny;
var ty = nx;

//get dot product of both normal vectors
var dpNorm1 = vx * nx + vy * ny;
var dpNorm2 = object1.vx * nx + object1.vy * ny;

//get dot product of both tangent vectors
var dpTan1 = vx * tx + vy * ty; 
var dpTan2 = object1.vx * tx + object1.vy * ty;


//https://en.wikipedia.org/wiki/Elastic_collision
//conservation of momentum in 1D
var m1 = (dpNorm1 * (MASS - object1.MASS) + 2.0 * object1.MASS * dpNorm2) / (MASS + object1.MASS);
var m2 = (dpNorm2 * (object1.MASS - MASS) + 2.0 * MASS * dpNorm1) / (MASS + object1.MASS);

//update ball velocities
vx = tx * dpTan1 + nx * m1;
vy = ty * dpTan1 + ny * m1;
object1.vx = tx * dpTan2 + nx * m2;
object1.vy = ty * dpTan2 + ny * m2;

//simplistic transfer of rotational momentum, this is not realistic at all
vr  = 0.5*vr;
object1.vr = -vr;
