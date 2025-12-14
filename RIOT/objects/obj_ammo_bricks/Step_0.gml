depth=-y;
duration-=.1;
if duration<=0 {instance_destroy();}
if chance<=1 {instance_destroy();}

//movement
if velocity_x>0.5
{
	velocity_x=(point_distance(x,y,end_x,end_y)/point_distance(start_x,start_y,end_x,end_y))*10;
	velocity_y+=.3;
	rotation=velocity_x*10;
}
else
{
	velocity_x=0;
	velocity_y=0;
	rotation=0;
	draw_x=0;
	draw_y=0;
}
if y+draw_y>y
{
	velocity_y=-velocity_y/hardness;
}
if point_distance(x,y,x,draw_y)<5
{
	velocity_x-=.25;
}

move_to_point(end_x,end_y,velocity_x);
draw_y+=velocity_y;
rotation_result-=rotation;