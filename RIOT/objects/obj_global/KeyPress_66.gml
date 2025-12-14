///@description Ballistic Unit
if global.debug==true
{
var randomness=random_range(-.05,.05);
if mouse_x>room_width/2
{
	var pawn=instance_create(room_width-50,random_range(400,600),obj_pawn_police);
	with(pawn)
	{
		//police
		faction=1;//0=rebels;1=police;
		pawn_type=1;//0=melee; 1=ranged; 2=journalists; 3=peaceful;
		end_x=-100;
		end_y=y;
		retreat_x=room_width+200;
		retreat_y=y;
		delta_sp=(.84*.75)/2;
		strength=.5+randomness;
		defense=.5+randomness;
		frequency=1;
		hp=12;
		crowd_density=2;
		crowd_range=5;
	}
}
else
{
	var pawn=instance_create(50,random_range(400,600),obj_pawn_rebels);
	with(pawn)
	{
		//rebels
		faction=0;//0=rebels;1=police;
		pawn_type=1;//0=melee; 1=ranged; 2=journalists; 3=peaceful; 4=wall;
		end_x=1100;
		end_y=y;
		retreat_x=-200;
		retreat_y=y;
		delta_sp=(.84*.75)/2;
		strength=.5+randomness;
		defense=.5+randomness;
		frequency=1;
		hp=12;
		crowd_density=5;
		crowd_range=random_range(-150,150);
	}
}
}