sprite=choose(spr_fx_shot1,spr_fx_shot2,spr_fx_shot3);

muzzle=random_range(0,100)
if muzzle>global.shooting_chance {instance_destroy();}
else
{
	//sound
	gunshot=snd_sfx_shot_gunshot;
	gunshot_echo=choose(snd_sfx_shot_raudi_openspace_01,snd_sfx_shot_raudi_openspace_02,snd_sfx_shot_raudi_openspace_03,snd_sfx_shot_raudi_openspace_04,snd_sfx_shot_raudi_openspace_05,snd_sfx_shot_raudi_openspace_06,snd_sfx_shot_raudi_openspace_07,snd_sfx_shot_raudi_openspace_08);
	if room==rm_notav_extra2
	|| room==rm_notav3
	|| room==rm_indignados1
	|| room==rm_indignados2
	|| room==rm_indignados3
	|| room==rm_indignados4
	|| room==rm_keratea2
	|| room==rm_tahrir1
	|| room==rm_tahrir2
	|| room==rm_tahrir3
	|| room==rm_tahrir4
	|| room==rm_tahrir5
	|| room==rm_syntagma
	|| room==rm_occupy
	|| room==rm_ukraine
	|| room==rm_taksim
	|| room==rm_library
	{gunshot_echo=choose(snd_sfx_shot_raudi_building_01,snd_sfx_shot_raudi_building_02,snd_sfx_shot_raudi_building_03,snd_sfx_shot_raudi_building_04,snd_sfx_shot_raudi_building_05,snd_sfx_shot_raudi_building_06,snd_sfx_shot_raudi_building_07,snd_sfx_shot_raudi_building_08,snd_sfx_shot_raudi_building_09);}
	audio_play_sound_alt(gunshot,50,0,global.audio_shots,random_range(.9,1.1));
	audio_play_sound_alt(gunshot_echo,50,0,global.audio_shots,random_range(.9,1.1));
}