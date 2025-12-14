sprite=spr_map_pigeon_idle;
state="idle";
range=random_range(50,100);
pigeon_range=random_range(100,50);
speed=random_range(7,4);
start_x=x;
start_y=y;
end_x=x+random_range(10,200);
end_y=y-500;
alpha=.5;
dir=choose(1,-1);
image_speed=.25;
image_index=random_range(0,image_number-1);

night=global.night;
night_color=global.night_color;
night_density=global.night_density;