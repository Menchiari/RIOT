depth=global.depth_guim2;

if mouse_check_button(mb_any)
{
	if collision_point(mouse_x,mouse_y,self,true,false){resume_alpha=1;}
	else{resume_alpha=0;}
}

if (mouse_check_button_released(mb_any) && collision_point(mouse_x,mouse_y,obj_gui_pause,true,false))
|| (global.rebels_defeat==true || global.police_defeat==true)
{
	instance_destroy(restart);
	instance_destroy(menu);
	instance_destroy();
}