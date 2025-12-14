nextroom=rm_credits;
music=snd_music_indignados_op;
sound_fx=snd_sfx_indignados_op;
audio_stop_all();
audio_play_sound(sound_fx,100,false);
audio_play_sound(music,100,false);
audio_sound_gain(sound_fx,global.audio_cinematics,0);
audio_sound_gain(music,global.audio_music,0);
