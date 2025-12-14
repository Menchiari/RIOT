/// @description 
if credits_y<-(credits_height/3)*credits_spacing || mouse_check_button_released(mb_any)
{
	audio_stop_all();
	room_goto(rm_menu);
}
credits_y-=((credits_height/3)*credits_spacing)/(room_speed*220)//height divided by seconds