repeat(irandom_range(10,20))
{
	instance_create(x+random_range(-100,100),y+random_range(-50,50),obj_map_pigeon);
}
instance_destroy();