if endframe() || mouse_check_button_released(mb_any)
{
	if mouse_check_button_released(mb_any) {audio_stop_all();}
	room_goto(nextroom);
}

//Audio sync
if  image_index==92 ||
	image_index==140 ||
	image_index==323
{audio_sound_set_track_position(sound_fx,image_index/room_speed);}