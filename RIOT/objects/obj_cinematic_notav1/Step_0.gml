if endframe() || mouse_check_button_released(mb_any)
{
	if mouse_check_button_released(mb_any) {audio_stop_all();}
	room_goto(nextroom);
}

//Audio sync
if  image_index==31 ||
	image_index==205 ||
	image_index==305 ||
	image_index==380 ||
	image_index==516
{audio_sound_set_track_position(snd_sfx_notav1,image_index/room_speed);}