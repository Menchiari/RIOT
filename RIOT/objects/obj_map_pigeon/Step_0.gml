sprite_index=sprite;
depth=-start_y;

switch(state)
{
	case "idle":
		image_speed=choose(0,.25);
		if collision_rectangle(x-range,y-range/2,x+range,y+range/2,obj_char_main_parent,false,true)
		|| collision_rectangle(x-range,y-range/2,x+range,y+range/2,obj_smokegrenade,false,true)
		|| collision_rectangle(x-range,y-range/2,x+range,y+range/2,obj_ammo,false,true)
		{
			image_index=0;
			sprite=spr_map_pigeon_fly;
			state="fly";
		}
		next_pigeon=collision_rectangle(x-pigeon_range,y-pigeon_range/2,x+pigeon_range,y+pigeon_range/2,obj_map_pigeon,false,true)
		{
			if instance_exists(next_pigeon)
			{
				if next_pigeon.state="fly" && abs(next_pigeon.y-next_pigeon.start_y)<20
				{
					image_index=0;
					sprite=spr_map_pigeon_fly;
					state="fly";
				}
			}
		}
	break;
	case "fly":
		image_speed=.5;
		if alpha>0 {alpha-=.01;}
		move_to_point(end_x*dir,end_y,speed);
		if point_distance(x,y,end_x*dir,end_y)<speed*2
		{
			instance_destroy();
		}
	break;
}