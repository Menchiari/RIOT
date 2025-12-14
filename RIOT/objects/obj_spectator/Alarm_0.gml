/// @description 
if instance_exists(obj_gui_controller_police)
&& instance_exists(obj_gui_controller_rebels)
{
	obj_gui_controller_police.ai=true;
	obj_gui_controller_police.ai_choice=irandom_range(0,global.ai_choices);
	obj_gui_controller_police.ai_faction=1;
	
	obj_gui_controller_rebels.ai=true;
	obj_gui_controller_rebels.ai_choice=irandom_range(0,global.ai_choices);
	obj_gui_controller_rebels.ai_faction=0;
}
