sprite_index=sprite;
if active==true
{
	alpha=alpha_desel;
	if mouse_check_button(mb_any)
	{
		if collision_point(mouse_x,mouse_y,self,true,false)
		{
			if mouse_check_button_pressed(mb_any)
			{
				audio_play_sound(snd_menu_tap,100,false);
				audio_sound_gain(snd_menu_tap,global.audio_gui,0);
			}
			alpha=alpha_sel;
			color=color_sel;
		}
		else
		{
			alpha=alpha_desel;
			color=color_desel;
		}
	}
	if mouse_check_button_released(mb_any) && collision_point(mouse_x,mouse_y,self,true,false)
	{
		audio_play_sound(snd_menu_select,100,false);
		audio_sound_gain(snd_menu_select,global.audio_gui,0);
		room_goto(target_room);
		global.night=target_night;
		if target_room!=rm_versus {audio_stop_all();}
	}
}
else
{
	alpha=0;
}