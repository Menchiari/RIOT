if endframe() || mouse_check_button_released(mb_any)
{
	if mouse_check_button_released(mb_any) {audio_stop_all();}
	room_goto(nextroom);
}
//Audio sync
if  image_index==99 ||
	image_index==129 ||
	image_index==223 ||
	image_index==263 ||
	image_index==303 ||
	image_index==527 ||
	image_index==563
{
	audio_sound_set_track_position(snd_sfx_notav3,image_index/room_speed);
	audio_sound_set_track_position(snd_music_notav3,image_index/room_speed);
}