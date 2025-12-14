function char_step() {
	depth=-y;
	r_dir=1;

	//MOVEMENT//
	if phy_linear_velocity_x>dummy_speed phy_linear_velocity_x=dummy_speed;
	if phy_linear_velocity_y>dummy_speed/2 phy_linear_velocity_y=dummy_speed/2;
	if phy_linear_velocity_x<-dummy_speed phy_linear_velocity_x=-dummy_speed;
	if phy_linear_velocity_y<-dummy_speed/2 phy_linear_velocity_y=-dummy_speed/2;

	if instance_exists(target) && panic==false
	{
		if target.x>x+spawn_range {physics_apply_force(x,y,dummy_speed/dummy_sprint,0);}
		else if target.x<x-spawn_range {physics_apply_force(x,y,-dummy_speed/dummy_sprint,0);}
		
		if target.y>y+spawn_range {physics_apply_force(x,y,0,0.2);}
		else if target.y<y-spawn_range {physics_apply_force(x,y,0,-0.2);}
	}
	else
	{
		panic=true;
	}
	if panic==true
	{
		if f_dir==-1 physics_apply_force(x,y,dummy_speed/dummy_sprint,0);
		else physics_apply_force(x,y,-dummy_speed/dummy_sprint,0);
	}

	//ANIMATION//
	var sp_med=dummy_speed/10;
	var sp_high=dummy_speed;

	if phy_linear_velocity_x>sp_med && phy_linear_velocity_x<sp_high
	{
		//walk right
		if dir==1 animation=anim_walk;
		else {r_dir=-dir; animation=anim_walk_backwards;}
	}
	else if phy_linear_velocity_x>=sp_high
	{
		//run right
		r_dir=dir;
		if dir==1 animation=anim_run;
		else animation=anim_escape;
	}
	else if phy_linear_velocity_x<-sp_med && phy_linear_velocity_x>-sp_high
	{
		//walk left
		if dir==1 {r_dir=dir; animation=anim_walk_backwards;}
		else animation=anim_walk;
	}
	else if phy_linear_velocity_x<=-sp_high
	{
		//run left
		r_dir=-dir;
		if dir==1 animation=anim_escape;
		else animation=anim_run;
	}
	else
	{
		//attack//
		//if collision_rectangle(x-(atk_range*r_dir),y-atk_range/2,x+(atk_range*r_dir),y+atk_range/2,enemy,false,true)
		//if collision_line(x,y-20,x+(atk_range*r_dir),y-20,enemy,false,true)
		if collision_point(x+(atk_range*r_dir),y-20,enemy,false,true)
		{
			animation=anim_attack;
			//if pawn_type!=-1 {enemy_hit.animation=anim_hurt;}
			if pawn_type==1
			{
				//ranged
				animation=anim_ranged;
			}
		}
		//make idle
		else
		{
			animation=anim_idle;
		}
	}

	if animation==anim_idle {image_speed=choose(0,0,0,0,0,choose(0,0,1,.5,.5,.5,.5));}
	else {image_speed=anim_sp;}

	if instance_exists(enemy)
	{
		var enemy_hit=instance_nearest(x,y,enemy);
		//rocks
		if image_index==561
		|| image_index==88
		|| image_index==105
		|| image_index==122
		|| image_index==1524
		{
			image_speed=anim_sp;
			if instance_number(obj_ammo)<50
			{
				var throwable=instance_create(x,y-20,obj_ammo);
				throwable.end_x=enemy_hit.x+random_range(-100,100);
				throwable.end_y=enemy_hit.y+random_range(-8,50);
			}
		}
		//smoke grenades sg
		if image_index==349
		|| image_index==359
		{
			image_speed=anim_sp;
			if instance_number(obj_smokegrenade)<3
			{
				var throwable=instance_create(x,y-20,obj_smokegrenade);
				throwable.end_x=enemy_hit.x+random_range(-100,100);
				throwable.end_y=enemy_hit.y+random_range(-50,50);
				instance_create(x,y,obj_shot);
			}
			instance_create(x,y,obj_shot);
		}
	}

	//destroy out of room
	if instance_exists(target) {if point_distance(x,y,target.x,target.y)>1000 panic=true;}
	if (x<-20 || x>room_width+20) && panic==true {instance_destroy();}
	if (x<-500 || x>room_width+500) {instance_destroy();}

	if existence==0 {instance_destroy();}


}
