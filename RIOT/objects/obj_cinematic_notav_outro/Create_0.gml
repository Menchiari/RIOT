nextroom=rm_credits;//todo room credits
audio_stop_all();
audio_play_sound(snd_sfx_notavo,100,false);
audio_play_sound(snd_music_notavo,100,false);
audio_sound_gain(snd_sfx_notavo,global.audio_cinematics,0);
audio_sound_gain(snd_music_notavo,global.audio_music,0);
