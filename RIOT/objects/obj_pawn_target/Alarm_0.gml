if faction==0
{
	if pawn_type!=-1 spawn=obj_dummy;
	else 
	{
		range=global.rebel_wall_spread;
		spawn=obj_dummy_crowd;
	}
}
else 
{
	range_x+=(quantity*4);
	if pawn_type!=-1 spawn=obj_police;
	else
	{
		range=global.police_spread;
		spawn=obj_police_crowd;
	}
}

repeat(quantity)
{
	dummy=instance_create(start_x+random_range(-range_x,range_x),start_y+random_range(-range,range),spawn);
	dummy.target=self.id;
	dummy.spawn_range=range;
	dummy.pawn_type=pawn_type;
}