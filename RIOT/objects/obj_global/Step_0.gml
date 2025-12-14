if room=rm_test && mouse_check_button_released(mb_any)
{
	//debug
	if point_distance(mouse_x,mouse_y,x+room_width/2,y+0)<100
	{
		game_restart();
	}
	if point_distance(mouse_x,mouse_y,x+room_width/2,y+room_height/2)<100
	{
		global.debug=!global.debug;
	}
	if point_distance(mouse_x,mouse_y,x+room_width/2,y+room_height)<150
	{
		//global.night=!global.night;
	}
}