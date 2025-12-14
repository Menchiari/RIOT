if active==true
{
	alpha=1;
	if mouse_check_button(mb_any)
	{
		if collision_point(mouse_x,mouse_y,self,true,false)
		{
			if mouse_check_button_pressed(mb_any)
			{
				audio_play_sound(snd_menu_tap,100,false);
				audio_sound_gain(snd_menu_tap,global.audio_gui,0);
			}
			color=color_sel;
		}
		else
		{
			color=color_desel;
		}
	}
	if mouse_check_button_released(mb_any) && collision_point(mouse_x,mouse_y,self,true,false)
	{
		if !instance_exists(obj_gui_pause) {instance_create(0,0,obj_gui_pause);}
		audio_play_sound(snd_menu_select,100,false);
		audio_sound_gain(snd_menu_select,global.audio_gui,0);
	}
}
else
{
	alpha=0;
}

if global.rebels_defeat || global.police_defeat {instance_destroy();}