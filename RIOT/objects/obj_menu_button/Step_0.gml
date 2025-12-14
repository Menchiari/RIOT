sprite_index=sprite;
if active==true
{
	alpha=1;
	if mouse_check_button(mb_any)
	{
		if collision_point(mouse_x,mouse_y,self,true,false)
		{
			color=color_sel;
		}
		else
		{
			color=color_desel;
		}
	}
	if mouse_check_button_released(mb_any) && collision_point(mouse_x,mouse_y,self,true,false)
	{
		global.ai_faction=target_faction;
		global.night=target_night;
		room_goto(target_room);
		audio_play_sound_alt(snd_menu_tap,100,false,global.audio_gui,random_range(.9,1.1));
	}
}
else
{
	alpha=0;
}