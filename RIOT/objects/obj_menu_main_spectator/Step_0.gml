if mouse_check_button_released(mb_any) && collision_point(mouse_x,mouse_y,self,true,false)
{
	global.spectator=!global.spectator;
	if global.spectator=false {image_index=0;}
	else {image_index=1;}
}