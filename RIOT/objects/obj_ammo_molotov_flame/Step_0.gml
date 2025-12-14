/// @description 
depth=-y;
sprite_index=sprite;
if endframe()
{
	if stage>6
	{
		//calculate if at the end of the last frame it repeats itself or dies
		var duration_chance=random_range(0,100);
		if duration_chance>50 {instance_destroy();}
	}
	else {instance_destroy();}
}