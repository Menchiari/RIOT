sprite_index=choose(spr_fx_molotov_bullet);
image_index=irandom_range(0,image_number-1);
image_speed=1;
depth=-y;
alpha=1;
start_x=x;
start_y=y;
end_x=x;
end_y=y;
draw_x=0;
draw_y=0;
velocity_x=10;
velocity_y=-10;
hardness=random_range(1.5,3);//low number bounces more - only >1
sliding_friction=random_range(1,3)*hardness;//the higher the number the less it slides
rotation=random_range(-10,10);
rotation_result=rotation;
duration=60;
duration_init=duration;
size=random_range(.7,1);

alarm[0]=1;
//if instance_number(obj_ammo_molotov)>1 {instance_destroy();}