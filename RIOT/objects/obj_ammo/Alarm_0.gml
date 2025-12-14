/// @description spawn ammo
//bricks
ammo1=instance_create(x,y,obj_ammo_bricks);
ammo1.end_x=end_x;
ammo1.end_y=end_y;
//molotovs
var chance=random_range(0,250);
if chance<molotov_chance// && !instance_exists(obj_ammo_molotov_flame)
{
	var ammo2=instance_create(x,y,obj_ammo_molotov);
	ammo2.end_x=end_x;
	ammo2.end_y=end_y;
}
//bombs
var chance=random_range(0,250);
if chance<bomb_chance// && !instance_exists(obj_ammo_bomb)
{
	var ammo3=instance_create(x,y,obj_ammo_bomb);
	ammo3.end_x=end_x;
	ammo3.end_y=end_y;
}

instance_destroy();
