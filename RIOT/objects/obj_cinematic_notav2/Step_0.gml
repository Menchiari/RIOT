if endframe() || mouse_check_button_released(mb_any)
{
	if mouse_check_button_released(mb_any) {audio_stop_all();}
	room_goto(nextroom);
}
//Audio sync
if  image_index==27 ||
	image_index==48 ||
	image_index==71 ||
	image_index==266
{audio_sound_set_track_position(snd_sfx_notav2,image_index/room_speed);}