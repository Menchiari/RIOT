function char_step_wall() {
	depth=-y;
	r_dir=1;

	//MOVEMENT//
	if phy_linear_velocity_x>dummy_speed phy_linear_velocity_x=dummy_speed;
	if phy_linear_velocity_y>dummy_speed/5 phy_linear_velocity_y=dummy_speed/5;
	if phy_linear_velocity_x<-dummy_speed phy_linear_velocity_x=-dummy_speed;
	if phy_linear_velocity_y<-dummy_speed/5 phy_linear_velocity_y=-dummy_speed/5;

	if instance_exists(target) && panic==false
	{
		{
			if point_distance(x,y,target.x,target.y)>spawn_range
			{
				if target.x>x physics_apply_force(x,y,dummy_speed/dummy_sprint,0);
				else physics_apply_force(x,y,-dummy_speed/dummy_sprint,0);
		
				if target.y>y physics_apply_force(x,y,0,0.1);
				else physics_apply_force(x,y,0,-0.1);
			}
				else
				{
					if start_x>x physics_apply_force(x,y,dummy_speed/dummy_sprint,0);
					else physics_apply_force(x,y,-dummy_speed/dummy_sprint,0);
		
					if start_y>y physics_apply_force(x,y,0,0.2);
					else physics_apply_force(x,y,0,-0.2);
				}
		}
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
		//r_dir=f_dir;
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
		//r_dir=f_dir;
		if dir==1 {r_dir=-dir; animation=anim_walk_backwards;}
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
		//make idle
		//if collision_circle(x+(10*r_dir),y-20,10,enemy,false,true)
		if collision_line(x,y,x+(atk_range*r_dir*2),y,enemy,false,true)
		{
			animation=anim_attack;
		}
		else
		{
			animation=anim_idle;
		}
	}

	if animation==anim_idle {image_speed=choose(0,0,0,random_range(0,.5));}
	else {image_speed=.5;}

	//destroy out of room
	if instance_exists(target) {if point_distance(x,y,target.x,target.y)>1000 panic=true;}
	if (x<-20 || x>room_width+20) && panic==true {instance_destroy();}
	if (x<-1000 || x>room_width+1000) {instance_destroy();}



}
