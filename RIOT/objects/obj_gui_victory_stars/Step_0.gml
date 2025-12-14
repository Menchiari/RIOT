/// @description 
sprite_index=sprite;
if endframe() image_speed=0;

gunshot=snd_sfx_shot_gunshot;
gunshot_echo=choose(snd_sfx_shot_raudi_openspace_01,snd_sfx_shot_raudi_openspace_02,snd_sfx_shot_raudi_openspace_03,snd_sfx_shot_raudi_openspace_04,snd_sfx_shot_raudi_openspace_05,snd_sfx_shot_raudi_openspace_06,snd_sfx_shot_raudi_openspace_07,snd_sfx_shot_raudi_openspace_08);

//add sound at frame 1
if image_index==1 && !audio_is_playing(gunshot) && !audio_is_playing(gunshot_echo)
{
	audio_play_sound_alt(gunshot,50,0,global.audio_shots*global.audio_gui_endmatch,random_range(.9,1.1));
	audio_play_sound_alt(gunshot_echo,50,0,global.audio_shots*global.audio_gui_endmatch,random_range(.9,1.1));
}
//add sound at frame 5
if image_index==5 && !audio_is_playing(gunshot) && !audio_is_playing(gunshot_echo)
{
	audio_play_sound_alt(gunshot,50,0,global.audio_shots*global.audio_gui_endmatch,random_range(.9,1.1));
	audio_play_sound_alt(gunshot_echo,50,0,global.audio_shots*global.audio_gui_endmatch,random_range(.9,1.1));
}
//add sound at frame 9
if image_index==9 && !audio_is_playing(gunshot) && !audio_is_playing(gunshot_echo)
{
	audio_play_sound_alt(gunshot,50,0,global.audio_shots*global.audio_gui_endmatch,random_range(.9,1.1));
	audio_play_sound_alt(gunshot_echo,50,0,global.audio_shots*global.audio_gui_endmatch,random_range(.9,1.1));
}
