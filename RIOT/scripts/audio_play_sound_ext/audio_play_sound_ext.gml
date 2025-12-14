/// @function audio_play_sound_alt_alternate(_sound, _priority, _loop, _gain, _pitch)
function audio_play_sound_alt(_sound, _priority, _loop, _gain = 1, _pitch = 1) {
	audio_play_sound(_sound,_priority,_loop);
	if _gain!=1 {audio_sound_gain(_sound,_gain,0);}
	if _pitch!=1 {audio_sound_pitch(_sound,_pitch);}
}