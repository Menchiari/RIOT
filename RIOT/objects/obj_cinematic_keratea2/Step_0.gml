if endframe() || mouse_check_button_released(mb_any)
{
	if mouse_check_button_released(mb_any) {audio_stop_all();}
	room_goto(nextroom);
}

//Audio sync
if  image_index==81 ||
	image_index==116 ||
	image_index==160
{audio_sound_set_track_position(sound_fx,image_index/room_speed);}