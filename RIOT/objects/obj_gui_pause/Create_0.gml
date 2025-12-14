depth=global.depth_guim2;
restart=instance_create(x,y,obj_gui_button);
menu=instance_create(x,y,obj_gui_button);
active=true;

resume_alpha=0;

with(restart)
{
	sprite=spr_gui_pause_restart;
	target_room=room;
	color=c_white;
	alpha_sel=1;
	color_sel=c_ltgray;
	alpha_desel=0;
	color_desel=color;
}
with(menu)
{
	sprite=spr_gui_pause_menu;
	target_room=rm_menu;
	color=c_white;
	alpha_sel=1;
	color_sel=c_ltgray;
	alpha_desel=0;
	color_desel=color;
}