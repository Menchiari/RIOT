if (ai==true && ai_faction==0)
{
	ai_choice=irandom_range(0,global.ai_choices);
	ai_timer=random_range(global.ai_timer_min,global.ai_timer_max);
	alarm[0]=ai_timer;
}