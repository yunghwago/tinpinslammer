/// @description Insert description here
// You can write your code in this editor

#region //move the view
if(!paused){
	var halfViewWidth = camera_get_view_width(view_camera[0])/2;
	var halfViewHeight = camera_get_view_height(view_camera[0])/2;
	//debug
	if (!switchcamera){
	camera_set_view_pos(view_camera[0], Test_Pin1.x - halfViewWidth, Test_Pin1.y - halfViewHeight)
	} else{
	camera_set_view_pos(view_camera[0], object1.x - halfViewWidth, object1.y - halfViewHeight)	
	}
}
#endregion
