points_rebels+=points_per_second/room_speed;
b1_rebels_locked=false;
b2_rebels_locked=false;
b3_rebels_locked=false;
b4_rebels_locked=false;
if points_rebels<global.cost_journalist {b1_rebels_locked=true;}
if points_rebels<global.cost_slow {b2_rebels_locked=true;}
if points_rebels<global.cost_fast {b3_rebels_locked=true;}
if points_rebels<global.cost_ranged {b4_rebels_locked=true;}

if points_rebels>=max_points {points_rebels=max_points;}

if global.rebels_defeat==true
{
	b1_rebels_locked=true;
	b2_rebels_locked=true;
	b3_rebels_locked=true;
	b4_rebels_locked=true;
	if instance_exists(obj_pawn_rebels){obj_pawn_rebels.state="retreat";}
	if !instance_exists(obj_final_spawner){instance_create(x+(sprite_width+200),y+(sprite_height/2),obj_final_spawner);}
}

//optimization - no more than x units
if locked_journalists==true {b1_rebels_locked=true;}

var randomness=random_range(-global.randomness,global.randomness);

if device_mouse_check_button(0,mb_any)
&& !(ai==true && ai_faction==0)
{
	//rebels//
	if (point_distance(mouse_x,mouse_y,b1_rebels_x,b1_rebels_y)<range && b1_rebels_locked==false)
	{
		b1_rebels_active=true;
		b2_rebels_active=false;
		b3_rebels_active=false;
		b4_rebels_active=false;
	}
	else {b1_rebels_active=false;}
	if (point_distance(mouse_x,mouse_y,b2_rebels_x,b2_rebels_y)<range && b2_rebels_locked==false)
	{
		b1_rebels_active=false;
		b2_rebels_active=true;
		b3_rebels_active=false;
		b4_rebels_active=false;
	}
	else {b2_rebels_active=false;}
	if (point_distance(mouse_x,mouse_y,b3_rebels_x,b3_rebels_y)<range && b3_rebels_locked==false)
	{
		b1_rebels_active=false;
		b2_rebels_active=false;
		b3_rebels_active=true;
		b4_rebels_active=false;
	}
	else {b3_rebels_active=false;}
	if (point_distance(mouse_x,mouse_y,b4_rebels_x,b4_rebels_y)<range && b4_rebels_locked==false)
	{
		b1_rebels_active=false;
		b2_rebels_active=false;
		b3_rebels_active=false;
		b4_rebels_active=true;
	}
	else {b4_rebels_active=false;}
}

if (device_mouse_check_button_released(0,mb_any) && !(ai==true && ai_faction==0))
^^ (ai==true && ai_faction==0)
{
////////////////////////////////REBELS\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
	if (point_distance(mouse_x,mouse_y,b1_rebels_x,b1_rebels_y)<range && b1_rebels_locked==false)
	&& !(ai==true && ai_faction==0)
	|| (ai==true && ai_choice==1 && b1_rebels_locked==false)
	{
		instance_create(b1_rebels_x,b1_rebels_y,obj_gui_tap);
		if instance_exists(obj_camera_global) {obj_camera_global.journalists_rebels+=1;}
		ai_choice=0;
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
		//optimization
		locked_journalists=true;
		alarm[1]=locked_journalists_timer;
	}
	if (point_distance(mouse_x,mouse_y,b2_rebels_x,b2_rebels_y)<range && b2_rebels_locked==false)
	&& !(ai==true && ai_faction==0)
	|| (ai==true && ai_choice==2 && b2_rebels_locked==false)
	{
		instance_create(b2_rebels_x,b2_rebels_y,obj_gui_tap);
		if instance_exists(obj_camera_global) {obj_camera_global.slow_rebels+=1;}
		ai_choice=0;
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
	if (point_distance(mouse_x,mouse_y,b3_rebels_x,b3_rebels_y)<range && b3_rebels_locked==false)
	&& !(ai==true && ai_faction==0)
	|| (ai==true && ai_choice==3 && b3_rebels_locked==false)
	{
		instance_create(b3_rebels_x,b3_rebels_y,obj_gui_tap);
		if instance_exists(obj_camera_global) {obj_camera_global.fast_rebels+=1;}
		ai_choice=0;
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
	if (point_distance(mouse_x,mouse_y,b4_rebels_x,b4_rebels_y)<range && b4_rebels_locked==false)
	&& !(ai==true && ai_faction==0)
	|| (ai==true && ai_choice==4 && b4_rebels_locked==false)
	{
		instance_create(b4_rebels_x,b4_rebels_y,obj_gui_tap);
		if instance_exists(obj_camera_global) {obj_camera_global.ranged_rebels+=1;}
		ai_choice=0;
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
	b1_rebels_active=false;
	b2_rebels_active=false;
	b3_rebels_active=false;
	b4_rebels_active=false;
}