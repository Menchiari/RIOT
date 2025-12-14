/// @description
depth=global.depth_menu;
clicked=false;
section=0;
text="";
text_alpha=0;
fade_alpha=1;
fade=0; //0=in 1=steady 2=out

audio_stop_all();
audio_play_sound(snd_music_intro,100,true);
audio_play_sound(snd_music_intro,100,true);
audio_sound_gain(snd_music_intro,global.audio_music,0);
