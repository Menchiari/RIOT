/// @description 
if mouse_check_button(mb_any)
{
	clicked=true;
}
else if mouse_check_button_released(mb_any)
{
	audio_play_sound_alt(snd_menu_tap,100,false,global.audio_gui,random_range(.9,1.1));
	clicked=false;
	image_index+=1;
	if image_index>image_number-1 room_goto(rm_menu);
}