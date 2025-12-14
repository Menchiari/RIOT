if endframe() || mouse_check_button_released(mb_any)
{
	if mouse_check_button_released(mb_any) {audio_stop_all();}
	room_goto(nextroom);
}

//Audio sync
if  image_index==43 ||
	image_index==192 ||
	image_index==341
{audio_sound_set_track_position(sound_fx,image_index/room_speed);}