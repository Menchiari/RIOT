nextroom=rm_notav2;
global.night=false;
audio_stop_all();
audio_play_sound(snd_sfx_notav2,100,false);
audio_play_sound(snd_music_notav2,100,false);
audio_sound_gain(snd_sfx_notav2,global.audio_cinematics,0);
audio_sound_gain(snd_music_notav2,global.audio_music,0);
