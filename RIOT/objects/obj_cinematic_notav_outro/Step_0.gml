if endframe() || mouse_check_button_released(mb_any)
{
	room_goto(nextroom);
}
//Audio sync
if  image_index==46 ||
	image_index==89 ||
	image_index==200 ||
	image_index==300 ||
	image_index==384
{
	audio_sound_set_track_position(snd_sfx_notavo,image_index/room_speed);
	audio_sound_set_track_position(snd_music_notavo,image_index/room_speed);
}