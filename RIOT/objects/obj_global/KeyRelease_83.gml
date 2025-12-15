///@description Spectator Mode
if keyboard_check(vk_control)
{
	if instance_exists(obj_spectator)
	{
		global.spectator=false;
		instance_destroy(obj_spectator);
	}
	else
	{
		global.spectator=true;
		instance_create_depth(x,y,0,obj_spectator);
	}
}