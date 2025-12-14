depth=-y;
//particle1
part_random+=.05;
if duration>duration_init/1.5
{
	part_emitter_region(part_system,part_emitter,x+draw_x+part_random,x+draw_x-part_random,y+draw_y-part_random/2,y+draw_y+part_random/2,ps_shape_rectangle,ps_distr_gaussian);
	repeat(choose(0,1)) {part_emitter_stream(part_system,part_emitter,part_type,1);}
}
else
{
	part_emitter_stream(part_system,part_emitter,part_type,0);
}
part_system_depth(part_system,-end_y);
//particle2
part_random2+=.6;
if duration>duration_init/2
{
	//particle 2
	part_emitter_region(part_system2,part_emitter2,x+draw_x+part_random2,x+draw_x-part_random2,y+part_random2/20,y-draw_y-part_random2/2,ps_shape_rectangle,ps_distr_linear);
	repeat(choose(0,0,0,0,0,0,0,0,0,0,1)) {part_emitter_stream(part_system2,part_emitter2,part_type2,1);}
}
else
{
	//particle2
	part_emitter_stream(part_system2,part_emitter2,part_type2,0);
}
part_system_depth(part_system2,-end_y-5);

///////////////////////////////////////////////

duration-=1;
if duration<=0 {instance_destroy();}
if chance<=chance_success {instance_destroy();}

//movement
velocity_x=(point_distance(x,y,end_x,end_y)/point_distance(start_x,start_y,end_x,end_y))*10;
velocity_y+=.3;
rotation=velocity_x*10;

if y+draw_y>y
{
	velocity_y=-velocity_y/hardness;
}
if abs(y-(y+draw_y))<20//point_distance(x,y,x+draw_x,y+draw_y)<20
{
	velocity_sg_max_sp=15;
	velocity_sg+=random_range(.25,-.25)
	//if velocity_sg<-velocity_sg_max_sp {velocity_sg=-velocity_sg_max_sp;}
	//if velocity_sg>velocity_sg_max_sp {velocity_sg=velocity_sg_max_sp;}
	if abs(velocity_sg)>velocity_sg_max_sp {velocity_sg=-velocity_sg/2;}
	x+=velocity_sg;
}

move_to_point(end_x,end_y,velocity_x);
draw_y+=velocity_y;
rotation_result-=rotation;