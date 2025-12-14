depth=global.depth_menu;
instance_create(x,y,obj_menu_main_story);
instance_create(x,y,obj_menu_main_versus);
instance_create(x,y,obj_menu_main_tutorial);
instance_create(x,y,obj_menu_main_music);
instance_create(x,y,obj_menu_transition);

ini_open("save.ini")
{
	if (ini_read_real("MAPS","notav1r",0)==true
	&& ini_read_real("MAPS","notav1p",0)==true
	&& ini_read_real("MAPS","notav2r",0)==true
	&& ini_read_real("MAPS","notav2p",0)==true
	&& ini_read_real("MAPS","notav3r",0)==true
	&& ini_read_real("MAPS","notav3p",0)==true
	&& ini_read_real("MAPS","notav4r",0)==true
	&& ini_read_real("MAPS","notav4p",0)==true
	&& ini_read_real("MAPS","indignados1r",0)==true
	&& ini_read_real("MAPS","indignados1p",0)==true
	&& ini_read_real("MAPS","indignados2r",0)==true
	&& ini_read_real("MAPS","indignados2p",0)==true
	&& ini_read_real("MAPS","indignados3r",0)==true
	&& ini_read_real("MAPS","indignados3p",0)==true
	&& ini_read_real("MAPS","indignados4r",0)==true
	&& ini_read_real("MAPS","indignados4p",0)==true
	&& ini_read_real("MAPS","keratea1r",0)==true
	&& ini_read_real("MAPS","keratea1p",0)==true
	&& ini_read_real("MAPS","keratea2r",0)==true
	&& ini_read_real("MAPS","keratea2p",0)==true
	&& ini_read_real("MAPS","keratea3r",0)==true
	&& ini_read_real("MAPS","keratea3p",0)==true
	&& ini_read_real("MAPS","keratea4r",0)==true
	&& ini_read_real("MAPS","keratea4p",0)==true
	&& ini_read_real("MAPS","tahrir1r",0)==true
	&& ini_read_real("MAPS","tahrir1p",0)==true
	&& ini_read_real("MAPS","tahrir2r",0)==true
	&& ini_read_real("MAPS","tahrir2p",0)==true
	&& ini_read_real("MAPS","tahrir3r",0)==true
	&& ini_read_real("MAPS","tahrir3p",0)==true
	&& ini_read_real("MAPS","tahrir4r",0)==true
	&& ini_read_real("MAPS","tahrir4p",0)==true
	&& ini_read_real("MAPS","tahrir5r",0)==true
	&& ini_read_real("MAPS","tahrir5p",0)==true
	)
	{
		global.audio_music_menu_track=global.audio_music_menu_track2;
	}
}
ini_close();


if !audio_is_playing(global.audio_music_menu_track)
{
	audio_stop_all();
	audio_play_sound(global.audio_music_menu_track,100,true);
	audio_sound_gain(global.audio_music_menu_track,global.audio_music,0);
}