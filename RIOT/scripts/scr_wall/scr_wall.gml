function scr_wall() {
	crowd_1=instance_create(x,y,spawn_group);
	crowd_2=instance_create(x+random_range(spawn_x1,spawn_x2)+tilt,y+spawn_y2,spawn_group);
	crowd_3=instance_create(x+random_range(spawn_x1,spawn_x2)-tilt,y+spawn_y1,spawn_group);
	crowd_4=instance_create(x+random_range(spawn_x1,spawn_x2)+tilt,y+abs(spawn_y1-spawn_y2),spawn_group);
	crowd_5=instance_create(x+random_range(spawn_x1,spawn_x2)-tilt,y-abs(spawn_y1-spawn_y2),spawn_group);


	crowd_1.spawn_range=random_range(max_distance,min_distance);
	crowd_1.pawn_type=pawn_type;
	crowd_1.quantity=quantity;
	crowd_1.range=range;
	crowd_1.faction=faction;

	crowd_2.spawn_range=random_range(max_distance,min_distance);
	crowd_2.pawn_type=pawn_type;
	crowd_2.quantity=quantity;
	crowd_2.range=range;
	crowd_2.faction=faction;

	crowd_3.spawn_range=random_range(max_distance,min_distance);
	crowd_3.pawn_type=pawn_type;
	crowd_3.quantity=quantity;
	crowd_3.range=range;
	crowd_3.faction=faction;

	crowd_4.spawn_range=random_range(max_distance,min_distance);
	crowd_4.pawn_type=pawn_type;
	crowd_4.quantity=quantity;
	crowd_4.range=range;
	crowd_4.faction=faction;

	crowd_5.spawn_range=random_range(max_distance,min_distance);
	crowd_5.pawn_type=pawn_type;
	crowd_5.quantity=quantity;
	crowd_5.range=range;
	crowd_5.faction=faction;



}
