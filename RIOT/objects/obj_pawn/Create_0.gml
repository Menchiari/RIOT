faction=0;//0=rebels; 1=police;
pawn_type=0//0=melee; 1=ranged; 2=journalists; 3=peaceful;
cost=10;//balancing in Alarm 0
end_x=1100;
end_y=y;
retreat_x=-100;
retreat_y=random_range(400,500);
target_wall=obj_null;
cost=4;
delta_sp=.84;
strength=1;
defense=1;
frequency=2;
hp=10;
journalist_points=0;
journalist_points_add=global.journalist_points_per_second/room_speed;
journalist_points_max=global.journalist_max_points;

alert_range=200;
attack_range=50;
current_sp=delta_sp;
target_x=end_x;
target_y=end_y;

state="move";
pawn=obj_null;
destroy_timer=50;

alarm[0]=1;

pawn_1=obj_null;
pawn_2=obj_null;
pawn_3=obj_null;
pawn_4=obj_null;
pawn_5=obj_null;
pawn_6=obj_null;

pawn_tilt=global.tilt;

crowd_density=1;
crowd_range=20;