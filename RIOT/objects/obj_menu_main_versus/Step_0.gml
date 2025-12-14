if mouse_check_button(mb_any)
{
	if collision_point(mouse_x,mouse_y,self,true,false)
	{
		alpha=1;
	}
	else
	{
		alpha=0;
	}
}
if mouse_check_button_released(mb_any) && collision_point(mouse_x,mouse_y,self,true,false)
{
	//go to versus room
	room_goto(rm_versus);
	audio_play_sound_alt(snd_menu_tap,100,false,global.audio_gui,random_range(.9,1.1));
}