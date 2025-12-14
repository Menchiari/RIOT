if image_alpha<1 image_alpha+=.1;

if best_time_anim==true
{
	best_time_alpha+=best_time_alpha_speed;
	if best_time_alpha>1 ^^ best_time_alpha<0
	{
		best_time_alpha_speed=best_time_alpha_speed*-1;
	}
	best_time_color=c_yellow;
}