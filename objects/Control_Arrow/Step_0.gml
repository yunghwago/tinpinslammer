/// @description Insert description here
// You can write your code in this editor
if (trackMouse == true){
	endPointX = mouse_x;
	endPointY = mouse_y;
	
	//debug i'll explain best i can if you want to, but it's easier if you comment this out and try moving around.
	startPointX += Test_Pin1.vx;
	startPointY += Test_Pin1.vy;
	
#region //setting the angle of the pin about the origin
	theta = point_direction(startPointX, startPointY, endPointX, endPointY) - 90;
	image_angle = theta;
#endregion
	
	x = endPointX;
	y = endPointY;
#region //scale the Control_Arrow as we click and drag it, also determine whether it's large enough to be worth rendering
	distance = abs(sqrt(sqr(endPointX-startPointX)+sqr(endPointY-startPointY)));
	image_yscale = distance/sprite_get_height(Control_Arrow_Sprite);
	if (distance > 5) {visible = true;}
	else {visible = false;}
#endregion
	
#region	//controls the animation of the white flashing border around the Control_Arrow; also controls the pitch of the arrow sound
	if (arrow_animation_timer > 0) {
		arrow_animation_timer -= delta_time;
		if (arrow_animation_timer <= 0) {
			outlineThickness = !outlineThickness;
			texelW = outlineThickness*texture_get_texel_width(sprite_get_texture(sprite_index,0));
			texelH = outlineThickness*texture_get_texel_height(sprite_get_texture(sprite_index,0));
			arrow_animation_timer = ARROW_ANIMATION_ALARM;
		}
	}
	audio_sound_pitch(SE_baybadge_arrow,(1.0+distance/view_wview));
#endregion
}