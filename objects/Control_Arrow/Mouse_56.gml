/// @description Insert description here
// You can write your code in this editor
visible = false;
trackMouse = false;
outlineThickness = false;
texelW = outlineThickness*texture_get_texel_width(sprite_get_texture(sprite_index,0));
texelH = outlineThickness*texture_get_texel_height(sprite_get_texture(sprite_index,0));

//---------- PIN MOVEMENT LOGIC START ----------

//caluculating shortest distance from arrow to pin
var slope = (endPointY - startPointY) / (endPointX - startPointX);

#region	//covering for cases where slope is undefined or infinite
if (slope > 1000) slope = 1000;
if (slope < -1000) slope = -1000;
if (endPointX - startPointX == 0) slope = 0.01; 
#endregion
//doing some y=mx+b and vector shit, don't worry about it (or do if you want)
var b_value = endPointY - (slope*endPointX); 
var distanceToPin = abs((0-slope)*Test_Pin1.x+Test_Pin1.y-b_value)/sqrt(sqr(-slope)+1);
if (abs((startPointX+endPointX)/2 - Test_Pin1.x) > 200 ) distanceToPin = 101; // bugfix for a weird case.
var pinPower = distance;

if (distanceToPin < 100 && distance > 10) { // pin is allowed to move if distanceToPin is short enough and the drawn arrow is long enough, otherwise no movement.
	#region	//add rotation to the pin
	
	//vector matrix product
	var clockwise = (endPointX-startPointX)*(Test_Pin1.y-startPointY)+(startPointY-endPointY)*(Test_Pin1.x-startPointX);
	clockwise /= abs(clockwise); //1 = clockwise, -1 = counterclockwise
	if (distanceToPin > 40) {
		Test_Pin1.vr = -clockwise*(distanceToPin/2);
	} else {
		Test_Pin1.vr = 0;
	}
	
	#endregion
	

	//moving the pin
	if (pinPower/10 > Test_Pin1.MAX_VELOCITY) pinPower = Test_Pin1.MAX_VELOCITY;

	Test_Pin1.vx = (pinPower/10)*cos(arctan2((endPointY - startPointY),(endPointX - startPointX)));
	Test_Pin1.vy = (pinPower/10)*sin(arctan2((endPointY - startPointY),(endPointX - startPointX)));
		
	
	distanceToPin = 101; //breaks the if statement so this block will not repeat.
}
audio_stop_sound(SE_baybadge_arrow);