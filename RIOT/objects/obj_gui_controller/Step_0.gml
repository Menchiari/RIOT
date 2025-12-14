points_rebels+=points_per_second/room_speed;
b1_rebels_locked=false;
b2_rebels_locked=false;
b3_rebels_locked=false;
b4_rebels_locked=false;
if points_rebels<global.cost_journalist {b1_rebels_locked=true;}
if points_rebels<global.cost_slow {b2_rebels_locked=true;}
if points_rebels<global.cost_fast {b3_rebels_locked=true;}
if points_rebels<global.cost_ranged {b4_rebels_locked=true;}

points_police+=points_per_second/room_speed;
b1_police_locked=false;
b2_police_locked=false;
b3_police_locked=false;
b4_police_locked=false;
if points_police<global.cost_journalist {b1_police_locked=true;}
if points_police<global.cost_slow {b2_police_locked=true;}
if points_police<global.cost_fast {b3_police_locked=true;}
if points_police<global.cost_ranged {b4_police_locked=true;}

if points_rebels>=max_points {points_rebels=max_points;}
if points_police>=max_points {points_police=max_points;}

if global.rebels_defeat==true
{
	b1_rebels_locked=true;
	b2_rebels_locked=true;
	b3_rebels_locked=true;
	b4_rebels_locked=true;
	if instance_exists(obj_pawn_rebels){obj_pawn_rebels.state="retreat";}
	if !instance_exists(obj_final_spawner){instance_create(x+(sprite_width+200),y+(sprite_height/2),obj_final_spawner);}
}
if global.police_defeat==true
{
	b1_police_locked=true;
	b2_police_locked=true;
	b3_police_locked=true;
	b4_police_locked=true;
	if instance_exists(obj_pawn_police){obj_pawn_police.state="retreat";}
	if !instance_exists(obj_final_spawner){instance_create(x-200,y+(sprite_height/2),obj_final_spawner);}
}

var randomness=random_range(-global.randomness,global.randomness);

if device_mouse_check_button(0,mb_any)
{
	//rebels//
	if point_distance(mouse_x,mouse_y,b1_rebels_x,b1_rebels_y)<range && b1_rebels_locked==false
	{
		b1_rebels_active=true;
	}
	else {b1_rebels_active=false;}
	if point_distance(mouse_x,mouse_y,b2_rebels_x,b2_rebels_y)<range && b2_rebels_locked==false
	{
		b2_rebels_active=true;
	}
	else {b2_rebels_active=false;}
	if point_distance(mouse_x,mouse_y,b3_rebels_x,b3_rebels_y)<range && b3_rebels_locked==false
	{
		b3_rebels_active=true;
	}
	else {b3_rebels_active=false;}
	if point_distance(mouse_x,mouse_y,b4_rebels_x,b4_rebels_y)<range && b4_rebels_locked==false
	{
		b4_rebels_active=true;
	}
	else {b4_rebels_active=false;}
	
	//police//
	if point_distance(mouse_x,mouse_y,b1_police_x,b1_police_y)<range && b1_police_locked==false
	{
		b1_police_active=true;
	}
	else {b1_police_active=false;}
	if point_distance(mouse_x,mouse_y,b2_police_x,b2_police_y)<range && b2_police_locked==false
	{
		b2_police_active=true;
	}
	else {b2_police_active=false;}
	if point_distance(mouse_x,mouse_y,b3_police_x,b3_police_y)<range && b3_police_locked==false
	{
		b3_police_active=true;
	}
	else {b3_police_active=false;}
	if point_distance(mouse_x,mouse_y,b4_police_x,b4_police_y)<range && b4_police_locked==false
	{
		b4_police_active=true;
	}
	else {b4_police_active=false;}
}

if device_mouse_check_button_released(0,mb_any)
{
////////////////////////////////REBELS\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
	if point_distance(mouse_x,mouse_y,b1_rebels_x,b1_rebels_y)<range && b1_rebels_locked==false
	{
		//Journalists
		points_rebels-=global.cost_journalist;
		var pawn=instance_create(x-global.rebel_journalist_density,y+y+random_range(spawn_min,spawn_max),obj_pawn_rebels);
		with(pawn)
		{
			//rebels
			faction=0;//0=rebels;1=police;
			pawn_type=2;//0=melee; 1=ranged; 2=journalists; 3=fast; 4=wall;
			end_x=1100;
			end_y=y;
			retreat_x=x-100;
			retreat_y=y;
			delta_sp=global.journalist_spd;
			strength=global.journalist_str+randomness;
			defense=global.journalist_def+randomness;
			frequency=global.journalist_freq;
			hp=global.journalist_hp;
			crowd_density=global.rebel_journalist_density;
			crowd_range=random_range(-global.rebel_spread,global.rebel_spread);
		}
	}
	if point_distance(mouse_x,mouse_y,b2_rebels_x,b2_rebels_y)<range && b2_rebels_locked==false
	{
		//Slow
		points_rebels-=global.cost_slow;
		var pawn=instance_create(x-global.rebel_slow_density,y+random_range(spawn_min,spawn_max),obj_pawn_rebels);
		with(pawn)
		{
			//rebels
			faction=0;//0=rebels;1=police;
			pawn_type=0;//0=melee; 1=ranged; 2=journalists; 3=fast; 4=wall;
			end_x=1100;
			end_y=y;
			retreat_x=x-100;
			retreat_y=y;
			delta_sp=global.slow_spd;
			strength=global.slow_str+randomness;
			defense=global.slow_def+randomness;
			frequency=global.slow_freq;
			hp=global.slow_hp;
			crowd_density=global.rebel_slow_density;
			crowd_range=random_range(-global.rebel_spread,global.rebel_spread);
		}
	}
	if point_distance(mouse_x,mouse_y,b3_rebels_x,b3_rebels_y)<range && b3_rebels_locked==false
	{
		//Fast
		points_rebels-=global.cost_fast;
		var pawn=instance_create(x-global.rebel_fast_density,y+random_range(spawn_min,spawn_max),obj_pawn_rebels);
		with(pawn)
		{
			//rebels
			faction=0;//0=rebels;1=police;
			pawn_type=3;//0=melee; 1=ranged; 2=journalists; 3=fast; 4=wall;
			end_x=1100;
			end_y=y;
			retreat_x=x-100;
			retreat_y=y;
			delta_sp=global.fast_spd;
			strength=global.fast_str+randomness;
			defense=global.fast_def+randomness;
			frequency=global.fast_freq;
			hp=global.fast_hp;
			crowd_density=global.rebel_fast_density;
			crowd_range=random_range(-global.rebel_spread,global.rebel_spread);
		}
	}
	if point_distance(mouse_x,mouse_y,b4_rebels_x,b4_rebels_y)<range && b4_rebels_locked==false
	{
		//Ranged
		points_rebels-=global.cost_ranged;
		var pawn=instance_create(x-global.rebel_ranged_density,y+random_range(spawn_min,spawn_max),obj_pawn_rebels);
		with(pawn)
		{
			//rebels
			faction=0;//0=rebels;1=police;
			pawn_type=1;//0=melee; 1=ranged; 2=journalists; 3=peaceful; 4=wall;
			end_x=1100;
			end_y=y;
			retreat_x=x-100;
			retreat_y=y;
			delta_sp=global.ranged_spd;
			strength=global.ranged_str+randomness;
			defense=global.ranged_def+randomness;
			frequency=global.ranged_freq;
			hp=global.ranged_hp;
			crowd_density=global.rebel_ranged_density;
			crowd_range=random_range(-global.rebel_spread,global.rebel_spread);
		}
	}

///////////////////////////////POLICE\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
	if point_distance(mouse_x,mouse_y,b1_police_x,b1_police_y)<range && b1_police_locked==false
	{
		//Journalists
		points_police-=global.cost_journalist;
		var pawn=instance_create(x+sprite_width+global.police_journalist_density,y+random_range(spawn_min,spawn_max),obj_pawn_police);
		with(pawn)
		{
			//police
			faction=1;//0=rebels;1=police;
			pawn_type=2;//0=melee; 1=ranged; 2=journalists; 3=fast;
			end_x=-100;
			end_y=y;
			retreat_x=x+100;
			retreat_y=y;
			delta_sp=global.journalist_spd;
			strength=global.journalist_str+randomness;
			defense=global.journalist_def+randomness;
			frequency=global.journalist_freq;
			hp=global.journalist_hp;
			crowd_density=global.police_journalist_density;
			crowd_range=20;
		}
	}
	if point_distance(mouse_x,mouse_y,b2_police_x,b2_police_y)<range && b2_police_locked==false
	{
		//Slow
		points_police-=global.cost_slow;
		var pawn=instance_create(x+sprite_width+global.police_slow_density,y+random_range(spawn_min,spawn_max),obj_pawn_police);
		with(pawn)
		{
			//police
			faction=1;//0=rebels;1=police;
			pawn_type=0;//0=melee; 1=ranged; 2=journalists; 3=fast;
			end_x=-100;
			end_y=y;
			retreat_x=x+100;
			retreat_y=y;
			delta_sp=global.slow_spd;
			strength=global.slow_str+randomness;
			defense=global.slow_def+randomness;
			frequency=global.slow_freq;
			hp=global.slow_hp;
			crowd_density=global.police_slow_density;
			crowd_range=global.police_spread;
		}
	}
	if point_distance(mouse_x,mouse_y,b3_police_x,b3_police_y)<range && b3_police_locked==false
	{
		//Fast
		points_police-=global.cost_fast;
		var pawn=instance_create(x+sprite_width+global.police_fast_density,y+random_range(spawn_min,spawn_max),obj_pawn_police);
		with(pawn)
		{
			//police
			faction=1;//0=rebels;1=police;
			pawn_type=3;//0=melee; 1=ranged; 2=journalists; 3=fast;
			end_x=-100;
			end_y=y;
			retreat_x=x+100;
			retreat_y=y;
			delta_sp=global.fast_spd;
			strength=global.fast_str+randomness;
			defense=global.fast_def+randomness;
			frequency=global.fast_freq;
			hp=global.fast_hp;
			crowd_density=global.police_fast_density;
			crowd_range=global.police_spread;
		}
	}
	if point_distance(mouse_x,mouse_y,b4_police_x,b4_police_y)<range && b4_police_locked==false
	{
		//Ranged
		points_police-=global.cost_ranged;
		var pawn=instance_create(x+sprite_width+global.police_ranged_density,y+random_range(spawn_min,spawn_max),obj_pawn_police);
		with(pawn)
		{
			//police
			faction=1;//0=rebels;1=police;
			pawn_type=1;//0=melee; 1=ranged; 2=journalists; 3=peaceful;
			end_x=-100;
			end_y=y;
			retreat_x=x+100;
			retreat_y=y;
			delta_sp=global.ranged_spd;
			strength=global.ranged_str+randomness;
			defense=global.ranged_def+randomness;
			frequency=global.ranged_freq;
			hp=global.ranged_hp;
			crowd_density=global.police_ranged_density;
			crowd_range=global.police_spread*2;
		}
	}
	b1_rebels_active=false;
	b2_rebels_active=false;
	b3_rebels_active=false;
	b4_rebels_active=false;
	b1_police_active=false;
	b2_police_active=false;
	b3_police_active=false;
	b4_police_active=false;
	
	//debug
	if point_distance(mouse_x,mouse_y,x+sprite_width/2,y+0)<100
	{
		game_restart();
	}
	if point_distance(mouse_x,mouse_y,x+sprite_width/2,y+sprite_height/2)<100
	{
		global.debug=!global.debug;
	}
	if point_distance(mouse_x,mouse_y,x+sprite_width/2,y+sprite_height)<100
	{
		global.night=!global.night;
	}
}