depth=global.depth_gui+10;

if instance_exists(obj_spectator) {instance_destroy();}
//only work when spectator mode is not around
else
{
	//audio

	audio_play_sound(snd_gui_tap,100,false);
	audio_sound_gain(snd_gui_tap,global.audio_gui,0);

	if y>150 && (x>room_width/2)
	{
		//police voices
		if !(global.ai==true && global.ai_faction==1)
		{
			radio_on=choose(snd_police_it_radio_in_01,snd_police_it_radio_in_02,snd_police_it_radio_in_03,snd_police_it_radio_in_04,snd_police_it_radio_in_05,snd_police_it_radio_in_06,snd_police_it_radio_in_07);
			audio_play_sound(radio_on,100,false);
			audio_sound_gain(radio_on,global.audio_police_radio,0);
			instance_create(x,y,obj_sfx_police);
		}
	}
	else if y>150 && (x<room_width/2)
	{
		//rebel voices
		if !(global.ai==true && global.ai_faction==0)
		{
			radio_on=choose(snd_police_it_radio_in_01,snd_police_it_radio_in_02,snd_police_it_radio_in_03,snd_police_it_radio_in_04,snd_police_it_radio_in_05,snd_police_it_radio_in_06,snd_police_it_radio_in_07);
			audio_play_sound(radio_on,100,false);
			audio_sound_gain(radio_on,global.audio_police_radio,0);
			instance_create(x,y,obj_sfx_rebels);
		}
	}

	//journalists
	if y<150
	{
		if x<room_width/2
		{
			audio_play_sound(snd_gui_journalists_rebels,100,false);
			audio_sound_gain(snd_gui_journalists_rebels,global.audio_camera,0);
		}
		else
		{
			audio_play_sound(snd_gui_journalists_police,100,false);
			audio_sound_gain(snd_gui_journalists_police,global.audio_camera,0);
		}
	}
}