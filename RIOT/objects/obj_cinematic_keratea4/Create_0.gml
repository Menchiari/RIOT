nextroom=rm_keratea4;
music=snd_music_keratea4;
sound_fx=snd_sfx_keratea4;
if global.ai_faction==0 {target_night=true;}
else {target_night=false;}
audio_stop_all();
audio_play_sound(sound_fx,100,false);
audio_play_sound(music,100,false);
audio_sound_gain(sound_fx,global.audio_cinematics,0);
audio_sound_gain(music,global.audio_music,0);
