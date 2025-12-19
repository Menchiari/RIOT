/// @description Balancing and Reset
global.rebels_defeat=false;
global.police_defeat=false;
scr_balancing();
points_per_second=global.points_per_second;
max_points=global.max_points;
points_rebels=global.initial_points;
points_police=global.initial_points;
points_journalist=global.cost_journalist;
points_slow=global.cost_slow;
points_fast=global.cost_fast;
points_ranged=global.cost_ranged;

//Spectator Mode
if global.spectator==true {instance_create_depth(x,y,0,obj_spectator);}

//EFFECTS
if instance_exists(obj_gui_controller)
{
	//Handheld camera
	if os_type!=os_ios
	{
	var _fx=fx_create("_filter_screenshake");
	fx_set_parameter(_fx,"g_Magnitude",1);
	fx_set_parameter(_fx,"g_ShakeSpeed",0.01);
	layer_create(global.depth_fx,"fx");
	layer_set_fx("fx",_fx);
	}
	var _fxbloom=fx_create("_filter_screenshake");
	fx_set_parameter(_fxbloom,"g_Magnitude",1);
	fx_set_parameter(_fxbloom,"g_ShakeSpeed",0.01);
	layer_create(global.depth_fx,"fx");
	layer_set_fx("fx",_fxbloom);	
}

//Pixel Perfect
if (view_enabled && view_visible[0]) {
	var cam = view_camera[0];
	var ww = camera_get_view_width(cam);
	var hh = camera_get_view_height(cam);
	surface_resize(application_surface, ww, hh);
	show_debug_message("Screen resize at "+string(ww)+"; "+string(hh));
}