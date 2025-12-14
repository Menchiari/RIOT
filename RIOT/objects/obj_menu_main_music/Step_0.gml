if mouse_check_button(mb_any)
{
	if collision_point(mouse_x,mouse_y,self,true,false)
	{
		color=c_red;
	}
	else
	{
		color=c_white;
	}
}
if mouse_check_button_released(mb_any) && collision_point(mouse_x,mouse_y,self,true,false)
{
	if global.audio_music_on==1
	{
		image_index=1;
		global.audio_music_on=0;
		global.audio_music=0;
		if audio_is_playing(global.audio_music_menu_track) {audio_sound_gain(global.audio_music_menu_track,0,0);}
	}
	else
	{
		image_index=0;
		global.audio_music_on=1;
		global.audio_music=audio_music_original;
		if audio_is_playing(global.audio_music_menu_track) {audio_sound_gain(global.audio_music_menu_track,audio_music_original,0);}
	}
}