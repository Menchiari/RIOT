if active==true
{
	if faction==0
	{
		var pawn=instance_create(x,y+random_range(-150,150),obj_pawn_rebels);
		with(pawn)
		{
			//rebels
			faction=0;//0=rebels;1=police;
			pawn_type=0;//0=melee; 1=ranged; 2=journalists; 3=fast; 4=wall;
			end_x=1100;
			end_y=y;
			retreat_x=x-100;
			retreat_y=y;
			delta_sp=global.slow_spd*random_range(1,2);
			strength=global.slow_str;
			defense=global.slow_def;
			frequency=global.slow_freq;
			hp=global.slow_hp;
			crowd_density=global.rebel_slow_density/2;
			if crowd_density<1{crowd_density=1;}
			crowd_range=random_range(-global.rebel_spread,global.rebel_spread);
		}
	}
	else
	{
		var pawn=instance_create(x,y+random_range(50,-50),obj_pawn_police);
		with(pawn)
		{
			//police
			faction=1;//0=rebels;1=police;
			pawn_type=0;//0=melee; 1=ranged; 2=journalists; 3=fast;
			end_x=-100;
			end_y=y;
			retreat_x=x+100;
			retreat_y=y;
			delta_sp=global.slow_spd*random_range(1,2);
			strength=global.slow_str;
			defense=global.slow_def;
			frequency=global.slow_freq;
			hp=global.slow_hp;
			crowd_density=global.police_slow_density/2;
			if crowd_density<1{crowd_density=1;}
			crowd_range=global.police_spread;
		}
	}

	alarm[0]=room_speed*random_range(time_min,time_max);
}