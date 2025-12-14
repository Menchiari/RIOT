sprite_index=choose(spr_ammo_branches,spr_ammo_bricks,spr_ammo_rocks);
image_index=irandom_range(0,image_number-1);
image_speed=0;
depth=-y;
alpha=random_range(0.01,1);
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

alarm[0]=1;
chance=irandom_range(0,6);

//sound
rock_sound=snd_null;
rock_volume=global.audio_rocks;
material=irandom_range(0,6);//0=bottle 1=bricks 2=glass 3=metal 4=plastic 5=rock 6=wood
alarm[1]=room_speed*random_range(2,4.5);