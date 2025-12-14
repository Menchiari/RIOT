if mouse_check_button(mb_any)
{
	if collision_point(mouse_x,mouse_y,self,true,false)
	{
		color=c_red;
	}
	else
	{
		color=c_black;
	}
}
if mouse_check_button_released(mb_any) && collision_point(mouse_x,mouse_y,self,true,false)
{
	//go to story room
	room_goto(rm_tutorial);
	audio_play_sound_alt(snd_menu_select,100,false,global.audio_gui,random_range(.9,1.1));
}