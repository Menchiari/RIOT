if endframe() || mouse_check_button_released(mb_any)
{
	if mouse_check_button_released(mb_any) {audio_stop_all();}
	room_goto(nextroom);
}
