function scr_pawn_step() {
	switch(faction)
	{
		case 1:
			//only police
			if instance_exists(obj_pawn_rebels)
			{pawn=instance_nearest(x,y,obj_pawn_rebels);}
			if instance_exists(obj_wall_rebels)
			{target_wall=obj_wall_rebels;}
			var pawn_model=obj_police;
			if instance_exists(pawn_1) {pawn_1.x=x;				pawn_1.y=y-60; pawn_1.spawn=pawn_model;}
			if instance_exists(pawn_2) {pawn_2.x=x+pawn_tilt;	pawn_2.y=y-20; pawn_2.spawn=pawn_model;}
			if instance_exists(pawn_3) {pawn_3.x=x+pawn_tilt*2; pawn_3.y=y+20; pawn_3.spawn=pawn_model;}
			if instance_exists(pawn_4) {pawn_4.x=x+pawn_tilt*3; pawn_4.y=y+60; pawn_4.spawn=pawn_model;}
			//if instance_exists(pawn_5) {pawn_5.x=x+pawn_offset+pawn_tilt*4; pawn_5.y=y; pawn_5.spawn=pawn_model;}
			//if instance_exists(pawn_6) {pawn_6.x=x-pawn_offset+pawn_tilt*5; pawn_6.y=y; pawn_6.spawn=pawn_model;}
		break;
		case 0:
			//only rebels
			if instance_exists(obj_pawn_police)
			{pawn=instance_nearest(x,y,obj_pawn_police);}
			if instance_exists(obj_wall_police)
			{target_wall=obj_wall_police;}
			var pawn_model=obj_dummy;
			if instance_exists(pawn_1) {pawn_1.x=x;					pawn_1.y=y-30;	pawn_1.spawn=pawn_model;}
			if instance_exists(pawn_2) {pawn_2.x=x-30+pawn_tilt;	pawn_2.y=y-90;	pawn_2.spawn=pawn_model;}
			if instance_exists(pawn_3) {pawn_3.x=x+pawn_tilt*2;		pawn_3.y=y+50;	pawn_3.spawn=pawn_model;}
			if instance_exists(pawn_4) {pawn_4.x=x-20+pawn_tilt*3;	pawn_4.y=y-50;	pawn_4.spawn=pawn_model;}
			//if instance_exists(pawn_5) {pawn_5.x=x+10+pawn_tilt*4; pawn_5.y=y+90;	 pawn_5.spawn=pawn_model;}
			//if instance_exists(pawn_6) {pawn_6.x=x+pawn_tilt*5; pawn_6.y=y;	pawn_6.spawn=pawn_model;}
		break;
	}

	switch(state)
	{
		case "move":
			current_sp=delta_sp;
			if instance_exists(pawn)
			{
				if point_distance(x,y,pawn.x,pawn.y)<alert_range && pawn.state!="retreat"
				{
					target_x=pawn.x;
					target_y=pawn.y;
					switch(pawn_type)
					{
						case 0://melee
							state="charge";
							pawn.state="charge";
						break;
						case 1://ranged
							state="attack_ranged";
							pawn.state="charge";
						break;
						default:
							state="charge";
							pawn.state="charge";
						break;
					}
				}
				else
				{
					if instance_exists(target_wall)
					{
						target_x=target_wall.x;
						target_y=target_wall.y;
						current_sp=delta_sp;
					}
					else
					{
						target_x=end_x;
						target_y=end_y;
						current_sp=delta_sp;
					}
				}
			}
			else
			{
				if instance_exists(target_wall)
				{
					target_x=target_wall.x;
					target_y=target_wall.y;
					current_sp=delta_sp;
				}
				else
				{
					target_x=end_x;
					target_y=end_y;
					current_sp=delta_sp;
				}
			}
		break;
		case "charge":
			current_sp=delta_sp*2;
			if instance_exists(pawn)
			{
				if point_distance(x,y,pawn.x,pawn.y)<attack_range && pawn.state!="retreat"
				{
					state="attack";
				}
				else {state="move";}
			}
			else {state="move";}
		break;
		case "attack":
		current_sp=0;
			if instance_exists(pawn) && pawn.state!="retreat"
			{
				current_sp=delta_sp/10;
				if point_distance(x,y,pawn.x,pawn.y)<attack_range*1.5
				{
					pawn.hp-=(1*strength/pawn.defense)/(room_speed/frequency);
					//journalists
					if pawn_type==2
					{
						journalist_points+=journalist_points_add;
						if journalist_points>journalist_points_max
						{
							state="retreat";
						}
					}
				}
				else {state="move";}
			}
			else {state="move";}
		break;
		case "attack_ranged":
		current_sp=0;
			if instance_exists(pawn) && pawn.state!="retreat"
			{
				if point_distance(x,y,pawn.x,pawn.y)<=attack_range
				{
					pawn.hp-=(1*strength/pawn.defense)/(room_speed/frequency);
				}
				else {state="move";}
			}
			else {state="move";}
		break;
		case "retreat":
			target_x=retreat_x;
			target_y=retreat_y;
			current_sp=delta_sp*2;
			//destroy
			if abs(x-retreat_x)<50//point_distance(x,y,retreat_x,retreat_x)<100
			{
				destroy_timer-=1;
				if destroy_timer<=0
				{
					switch(faction)
					{
						case 0://rebels
						if instance_exists(obj_gui_controller_rebels)
						{
							obj_gui_controller_rebels.points_rebels+=journalist_points;
							if pawn_type==2 {instance_create(obj_gui_controller_rebels.x+30,obj_gui_controller_rebels.y+45,obj_gui_tap);}
						}
						break;
						case 1://police
						if instance_exists(obj_gui_controller_police)
						{
							obj_gui_controller_police.points_police+=journalist_points;
							if pawn_type==2 {instance_create(obj_gui_controller_police.x+735,obj_gui_controller_police.y+45,obj_gui_tap);}
						}
						break;
					}
					instance_destroy();
				}
			}
		break;
	}

	move_to_point(target_x,target_y,current_sp);
	if hp<=0 {state="retreat";}

	//panic
	//if hp<8.5 {if instance_exists(pawn_6) pawn_6.panic=true;}
	//if hp<6 {if instance_exists(pawn_5) pawn_5.panic=true;}
	if hp<8 {if instance_exists(pawn_4) pawn_4.panic=true;}
	if hp<5 {if instance_exists(pawn_3) pawn_3.panic=true;}
	if hp<3 {if instance_exists(pawn_2) pawn_2.panic=true;}
	if hp<=0
	{
		if instance_exists(pawn_1) pawn_1.panic=true;
	}

	//wall
	if instance_exists(target_wall)
	{
		if point_distance(x,y,target_wall.x,target_wall.y)<80 && state!="retreat"
		{
			state="attack";
			current_sp=0;
			target_wall.hp-=(1*strength/target_wall.defense)/(room_speed/frequency)
		}
	}


}
