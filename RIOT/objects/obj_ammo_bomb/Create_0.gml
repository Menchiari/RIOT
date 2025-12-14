sprite_index=spr_ammo_colorized;
image_index=irandom_range(0,image_number-1);
image_speed=0;
alpha=random_range(0,1);
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
bomb_color=choose(c_white,c_yellow,c_red,c_orange)

alarm[0]=1;
alarm[2]=duration*2;//bomb blast

//sound
rock_sound=snd_null;
rock_volume=global.audio_rocks;
material=4;//0=bottle 1=bricks 2=glass 3=metal 4=plastic 5=rock 6=wood
alarm[1]=room_speed*random_range(2,4.5);

//if instance_number(obj_ammo_bomb)>1 {instance_destroy();}