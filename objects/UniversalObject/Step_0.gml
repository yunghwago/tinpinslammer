/// @description Insert description here
// You can write your code in this editor
window_set_caption("Tin Pin Slammer | FPS: " + string(fps) + " | Debug Mode = " + string(global.debugmode));
#region // timer for playing startup sound effects

if(keyboard_check_pressed(vk_space)){
    paused = !paused;

}

if(paused){
    instance_deactivate_all(1);
}else{
    instance_activate_all();
	if (slamSoundEffect_alarm > 0) { //FIX ME
		slamSoundEffect_alarm -= delta_time;
		if (slamSoundEffect_alarm <= 0) {
			audio_play_sound(round_start_SLAM,1001,false);
			audio_play_sound(SE_baybadge_start01,1000,false);
		}
	}

	if (onSoundEffect_alarm > 0) { //FIX ME
		onSoundEffect_alarm -= delta_time;
		if (onSoundEffect_alarm <= 0) {
			audio_play_sound(round_start_ON,1001,false);
			audio_play_sound(SE_baybadge_start02,1000,false);
		}
	}
}

#endregion