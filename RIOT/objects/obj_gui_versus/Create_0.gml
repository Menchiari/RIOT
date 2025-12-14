sprite=spr_gui_versus_police;
depth=global.depth_guim2;
image_alpha=0;
text_color=c_white;

if global.police_defeat==true
{
	audio_play_sound(snd_music_victory_rebels,500,false);
	audio_sound_gain(snd_music_victory_rebels,global.audio_gui_endmatch,0);
	sprite=spr_gui_versus_rebels;
	button_retry=instance_create(x,y,obj_gui_button);
	with button_retry
	{
		sprite=spr_gui_versus_rebels_restart;
		target_room=room;
	}
	button_next=instance_create(x,y,obj_gui_button);
	with button_next
	{
		sprite=spr_gui_versus_rebels_next;
		scr_menu_versus_randomlevel();
	}
}
else
{
	audio_play_sound(snd_music_victory_police,500,false);
	audio_sound_gain(snd_music_victory_rebels,global.audio_gui_endmatch,0);
	sprite=spr_gui_versus_police;
	button_restart=instance_create(x,y,obj_gui_button);
	with button_restart
	{
		sprite=spr_gui_versus_police_restart;
		target_room=room;
	}
	button_next=instance_create(x,y,obj_gui_button);
	with button_next
	{
		sprite=spr_gui_versus_police_next;
		scr_menu_versus_randomlevel();
	}
}

//RESULTS
if instance_exists(obj_camera_global)
{
	
	result_text_m=
	"- FINAL RESULTS -"
	+"\n"
	+"\n"
	+"\n"
	+"\n"
	+"\n"
	+"\n"
	+"\n"
	+"AREA CLEARED IN "+string(obj_camera_global.level_timer/30)+" SECONDS"

	result_text_mr=
	"\n"
	+"\n"
	+"INDIE JOURNALISTS"
	+"\n"
	+"NON-VIOLENT"
	+"\n"
	+"AGGRESSIVE"
	+"\n"
	+"RANGED"

	result_text_mp=
	"\n"
	+"\n"
	+"CORPORATE MEDIA"
	+"\n"
	+"TACTICAL UNITS"
	+"\n"
	+"ASSAULT UNITS"
	+"\n"
	+"RANGED UNITS"
	
	result_text_r=
	"\n"
	+"\n"
	+string(obj_camera_global.journalists_rebels)
	+"\n"
	+string(obj_camera_global.slow_rebels)
	+"\n"
	+string(obj_camera_global.fast_rebels)
	+"\n"
	+string(obj_camera_global.ranged_rebels)

	result_text_p=
	"\n"
	+"\n"
	+string(obj_camera_global.journalists_police)
	+"\n"
	+string(obj_camera_global.slow_police)
	+"\n"
	+string(obj_camera_global.fast_police)
	+"\n"
	+string(obj_camera_global.ranged_police)

}

instance_create(0,0,obj_gui_tvstatic);