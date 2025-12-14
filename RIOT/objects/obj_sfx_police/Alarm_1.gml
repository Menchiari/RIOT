/// @description radio sounds
var radio=choose(snd_police_it_radio_out_01,snd_police_it_radio_out_02,snd_police_it_radio_out_03,snd_police_it_radio_out_04);
audio_play_sound(radio,100,false);
audio_sound_gain(radio,global.audio_police_radio,0);