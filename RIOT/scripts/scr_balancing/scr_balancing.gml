////BALANCING////
function scr_balancing() {

	global.points_per_second=1//.75;
	global.max_points=99.9;
	global.initial_points=5;

	global.cost_journalist=3;
	global.cost_slow=10;
	global.cost_fast=5.5;
	global.cost_ranged=4;

	global.randomness=.015;

	global.journalist_spd=.7;
	global.journalist_str=.1;
	global.journalist_def=1;
	global.journalist_freq=1;
	global.journalist_hp=5;
	global.journalist_points_per_second=.5;
	global.journalist_max_points=8;

	global.slow_spd=.6;
	global.slow_str=1;
	global.slow_def=2.3;
	global.slow_freq=1;
	global.slow_hp=10;

	global.fast_spd=1.3;
	global.fast_str=1;
	global.fast_def=1;
	global.fast_freq=1;
	global.fast_hp=10;

	global.ranged_spd=.5;
	global.ranged_str=.3;
	global.ranged_def=.3;
	global.ranged_freq=1;
	global.ranged_hp=10;

	global.violence=30;// % of death chance
	global.violence_timer=room_speed*15

	//crowd
	global.rebel_spread=100;
	global.rebel_wall_spread=200;
	global.rebel_wall_density=10;
	global.rebel_slow_density=10;
	global.rebel_fast_density=4;
	global.rebel_ranged_density=3;
	global.rebel_journalist_density=1;

	global.police_spread=5;
	global.police_wall_density=2;
	global.police_slow_density=3;
	global.police_fast_density=2;
	global.police_ranged_density=1;
	global.police_journalist_density=1;

	//ROOM DIFFERENCES
	switch(room)
	{
	////////////Indignados////////////
		//Pozo Soton
		case rm_indignados1:
			global.locked_journalists_timer=room_speed*2;
			global.initial_points=50;
			global.points_per_second=2//.75;
			global.tilt=-5; //isometric from top to left bottom right

			global.ai_timer_min=room_speed*1;
			global.ai_timer_max=room_speed*6;

			global.cost_journalist=3;	//3
			global.cost_slow=15;		//10
			global.cost_fast=8;		//5.5
			global.cost_ranged=12;		//4

			global.journalist_spd=.7;
			global.journalist_str=.1;
			global.journalist_def=2;
			global.journalist_max_points=15;

			global.slow_spd=.5//.6;
			global.slow_str=1.5//1;
			global.slow_def=3.15//2.3;

			global.fast_spd=1.5//1.3;
			global.fast_str=1.5//1;
			global.fast_def=1.5//1;

			global.ranged_spd=.35//.5;
			global.ranged_str=.5//.3;
			global.ranged_def=.25//.3;

			global.violence=30;// % of death chance

			global.rebel_spread=10;
			global.rebel_wall_spread=80;
			global.rebel_wall_density=5;
			global.rebel_slow_density=2;
			global.rebel_fast_density=2;
			global.rebel_ranged_density=2;
			global.rebel_journalist_density=1;

			global.police_spread=5;
			global.police_wall_density=2;
			global.police_slow_density=2;
			global.police_fast_density=1;
			global.police_ranged_density=1;
			global.police_journalist_density=1;
		break;
	
		//15M
		case rm_indignados2:
			global.tilt=10; //isometric from top to left bottom right

			global.ai_timer_min=room_speed*1;
			global.ai_timer_max=room_speed*2;

			global.cost_journalist=1.5;	//3
			global.cost_slow=7;		//10
			global.cost_fast=6;		//5.5
			global.cost_ranged=5;		//4

			global.journalist_spd=.7;
			global.journalist_str=.1;
			global.journalist_def=1;

			global.slow_spd=.5//.6;
			global.slow_str=1;
			global.slow_def=3//2.3;

			global.fast_spd=1.5//1.3;
			global.fast_str=1;
			global.fast_def=1;

			global.ranged_spd=.5;
			global.ranged_str=.3;
			global.ranged_def=.3;

			global.violence=5;// % of death chance

			global.rebel_wall_density=60;
			global.rebel_slow_density=10;
			global.rebel_fast_density=8;
			global.rebel_ranged_density=5;
			global.rebel_journalist_density=1;

			global.police_spread=5;
			global.police_wall_density=2;
			global.police_slow_density=3;
			global.police_fast_density=2;
			global.police_ranged_density=1;
			global.police_journalist_density=1;
		break;
	
		//Indignados 3
		case rm_indignados3:
			global.tilt=15; //isometric from top to left bottom right
			global.locked_journalists_timer=room_speed*8;

			global.ai_timer_min=room_speed*1;
			global.ai_timer_max=room_speed*3;

			global.cost_journalist=1.5;	//3
			global.cost_slow=6;		//10
			global.cost_fast=8;		//5.5
			global.cost_ranged=6;		//4

			global.journalist_spd=.7;
			global.journalist_str=.1;
			global.journalist_def=1;

			global.slow_spd=.5//.6;
			global.slow_str=.5//1;
			global.slow_def=2//2.3;

			global.fast_spd=1.5//1.3;
			global.fast_str=1.5//1;
			global.fast_def=1;

			global.ranged_spd=.5;
			global.ranged_str=.6//.3;
			global.ranged_def=.5//.3;

			global.violence=5;// % of death chance

			global.rebel_spread=100;
			global.rebel_wall_density=30//10;
			global.rebel_slow_density=10//10;
			global.rebel_fast_density=8//4;
			global.rebel_ranged_density=5//3;
			global.rebel_journalist_density=1;

			global.police_spread=6//5;
			global.police_wall_density=5//2;
			global.police_slow_density=2//3;
			global.police_fast_density=6//2;
			global.police_ranged_density=1;
			global.police_journalist_density=1;
		break;
	
		//Mossos Retreat
		case rm_indignados4:
			global.tilt=80; //isometric from top to left bottom right

			global.ai_timer_min=10//room_speed*1;
			global.ai_timer_max=room_speed*1;

			global.cost_journalist=4;	//3
			global.cost_slow=10;		//10
			global.cost_fast=5		//5.5
			global.cost_ranged=4;		//4

			global.journalist_spd=.7;
			global.journalist_str=.1;
			global.journalist_def=1;

			global.slow_spd=1//.6;
			global.slow_str=1;
			global.slow_def=2//2.3;

			global.fast_spd=1.5//1.3;
			global.fast_str=1;
			global.fast_def=.75//1;

			global.ranged_spd=.5;
			global.ranged_str=.3;
			global.ranged_def=.3;

			global.violence=20;// % of death chance

			global.rebel_spread=50;
			global.rebel_wall_density=10;
			global.rebel_slow_density=8;
			global.rebel_fast_density=5;
			global.rebel_ranged_density=4;
			global.rebel_journalist_density=1;

			global.police_spread=6;
			global.police_wall_density=5;
			global.police_slow_density=3;
			global.police_fast_density=2;
			global.police_ranged_density=1;
			global.police_journalist_density=1;
		break;
	
	////////////NoTAV//////////
		//Chianocco
		case rm_notav1:
			global.tilt=-20; //isometric from top to left bottom right
			global.points_per_second=1.5//.75;
			global.locked_journalists_timer=room_speed*2;
		break;
	
		//Cantiere
		case rm_notav2:
			global.tilt=-20; //isometric from top to left bottom right

			global.cost_journalist=4;	//3
			global.cost_slow=8;			//10
			global.cost_fast=6;			//5.5
			global.cost_ranged=4;		//4

			global.slow_str=1;
			global.slow_def=3//2.3;
			global.fast_str=1;
			global.fast_def=1.5//1;
			global.ranged_str=.3;
			global.ranged_def=.3;

			global.rebel_wall_density=10;
			global.police_wall_density=10;
			global.police_slow_density=2;
			global.police_fast_density=2;
		break;
	
		//A32
		case rm_notav3:
			global.tilt=30; //isometric from top to left bottom right

			global.cost_journalist=2;	//3
			global.cost_slow=8;			//10
			global.cost_fast=5;			//5.5
			global.cost_ranged=4;		//4

			global.slow_str=1;
			global.slow_def=2//2.3;
			global.fast_str=1;
			global.fast_def=.75//1;
			global.ranged_str=.3;
			global.ranged_def=.3;

			global.rebel_wall_density=35;
			global.police_wall_density=20;
			global.police_slow_density=8;
			global.police_fast_density=4;
		break;
	
		//Cantiere 2
		case rm_notav4:
			global.tilt=-30; //isometric from top to left bottom right
			global.cost_journalist=5;	//3
			global.cost_slow=8;			//10
			global.cost_fast=6;			//5.5
			global.cost_ranged=3;		//4

			global.slow_str=1;
			global.slow_def=2//2.3;
			global.fast_str=1.2//1;
			global.fast_def=1;
			global.ranged_str=.25//.3;
			global.ranged_def=.3;

			global.rebel_wall_density=20;
			global.police_wall_density=10;
			global.police_slow_density=2;
			global.police_fast_density=2;
		break;
	
	////////////Keratea////////////
		//keratea1
		case rm_keratea1:
			global.points_per_second=1.5//.75;
			global.locked_journalists_timer=room_speed*2;
			global.tilt=-40; //isometric from top to left bottom right

			global.ai_timer_min=room_speed*1;
			global.ai_timer_max=room_speed*6;

			global.cost_journalist=3;	//3
			global.cost_slow=10;		//10
			global.cost_fast=5.5;		//5.5
			global.cost_ranged=4;		//4

			global.journalist_spd=.7;
			global.journalist_str=.1;
			global.journalist_def=1;

			global.slow_spd=.6;
			global.slow_str=1;
			global.slow_def=2.3;

			global.fast_spd=1.3;
			global.fast_str=1;
			global.fast_def=1;

			global.ranged_spd=.5;
			global.ranged_str=.3;
			global.ranged_def=.3;

			global.violence=30;// % of death chance

			global.rebel_spread=100;
			global.rebel_wall_density=10;
			global.rebel_slow_density=10;
			global.rebel_fast_density=4;
			global.rebel_ranged_density=3;
			global.rebel_journalist_density=1;

			global.police_spread=5;
			global.police_wall_density=2;
			global.police_slow_density=3;
			global.police_fast_density=2;
			global.police_ranged_density=1;
			global.police_journalist_density=1;
		break;
	
		//keratea2
		case rm_keratea2:
			global.tilt=30; //isometric from top to left bottom right

			global.ai_timer_min=room_speed*1;
			global.ai_timer_max=room_speed*4;

			global.cost_journalist=3;	//3
			global.cost_slow=10;		//10
			global.cost_fast=5.5;		//5.5
			global.cost_ranged=4;		//4

			global.journalist_spd=.7;
			global.journalist_str=.1;
			global.journalist_def=1;

			global.slow_spd=.6;
			global.slow_str=1;
			global.slow_def=2.3;

			global.fast_spd=1.3;
			global.fast_str=1;
			global.fast_def=1;

			global.ranged_spd=.5;
			global.ranged_str=.3;
			global.ranged_def=.3;

			global.violence=30;// % of death chance

			global.rebel_spread=100;
			global.rebel_wall_density=10;
			global.rebel_slow_density=10;
			global.rebel_fast_density=4;
			global.rebel_ranged_density=3;
			global.rebel_journalist_density=1;

			global.police_spread=5;
			global.police_wall_density=2;
			global.police_slow_density=3;
			global.police_fast_density=2;
			global.police_ranged_density=1;
			global.police_journalist_density=1;
		break;
	
		//Keratea 3
		case rm_keratea3:
			global.tilt=30; //isometric from top to left bottom right

			global.ai_timer_min=room_speed*1;
			global.ai_timer_max=room_speed*3;

			global.cost_journalist=6;	//3
			global.cost_slow=10;		//10
			global.cost_fast=5.5;		//5.5
			global.cost_ranged=4;		//4

			global.journalist_spd=.7;
			global.journalist_str=.1;
			global.journalist_def=1;

			global.slow_spd=.6;
			global.slow_str=1;
			global.slow_def=2.3;

			global.fast_spd=1.3;
			global.fast_str=1;
			global.fast_def=1;

			global.ranged_spd=.5;
			global.ranged_str=.3;
			global.ranged_def=.3;

			global.violence=30;// % of death chance

			global.rebel_spread=100;
			global.rebel_wall_density=10;
			global.rebel_slow_density=10;
			global.rebel_fast_density=4;
			global.rebel_ranged_density=3;
			global.rebel_journalist_density=1;

			global.police_spread=5;
			global.police_wall_density=2;
			global.police_slow_density=3;
			global.police_fast_density=2;
			global.police_ranged_density=1;
			global.police_journalist_density=1;
		break;
	
		//Keratea4
		case rm_keratea4:
			global.tilt=20; //isometric from top to left bottom right

			global.ai_timer_min=room_speed*1;
			global.ai_timer_max=room_speed*2;

			global.cost_journalist=6;	//3
			global.cost_slow=10;		//10
			global.cost_fast=5.5;		//5.5
			global.cost_ranged=4;		//4

			global.journalist_spd=.7;
			global.journalist_str=.1;
			global.journalist_def=1;

			global.slow_spd=.6;
			global.slow_str=1;
			global.slow_def=2.3;

			global.fast_spd=1.3;
			global.fast_str=1;
			global.fast_def=1;

			global.ranged_spd=.5;
			global.ranged_str=.3;
			global.ranged_def=.3;

			global.violence=30;// % of death chance

			global.rebel_spread=100;
			global.rebel_wall_density=10;
			global.rebel_slow_density=10;
			global.rebel_fast_density=4;
			global.rebel_ranged_density=3;
			global.rebel_journalist_density=1;

			global.police_spread=5;
			global.police_wall_density=2;
			global.police_slow_density=3;
			global.police_fast_density=2;
			global.police_ranged_density=1;
			global.police_journalist_density=1;
		break;
	
	////////////Tahrir////////////
		//Tahrir1
		case rm_tahrir1:
			global.points_per_second=1.5//.75;
			global.locked_journalists_timer=room_speed*2;
			global.tilt=60; //isometric from top to left bottom right

			global.ai_timer_min=room_speed*1;
			global.ai_timer_max=room_speed*6;

			global.cost_journalist=3;	//3
			global.cost_slow=10;		//10
			global.cost_fast=5.5;		//5.5
			global.cost_ranged=4;		//4

			global.journalist_spd=.7;
			global.journalist_str=.1;
			global.journalist_def=1;

			global.slow_spd=.6;
			global.slow_str=1;
			global.slow_def=2.3;

			global.fast_spd=1.3;
			global.fast_str=1;
			global.fast_def=1;

			global.ranged_spd=.5;
			global.ranged_str=.3;
			global.ranged_def=.3;

			global.violence=30;// % of death chance

			global.rebel_spread=100;
			global.rebel_wall_density=20;
			global.rebel_slow_density=10;
			global.rebel_fast_density=4;
			global.rebel_ranged_density=3;
			global.rebel_journalist_density=1;

			global.police_spread=10//5;
			global.police_wall_density=10;
			global.police_slow_density=3;
			global.police_fast_density=2;
			global.police_ranged_density=1;
			global.police_journalist_density=1;
		break;
	
		//Tahrir2 - BRIDGE
		case rm_tahrir2:
			global.points_per_second=2//.75;
			global.tilt=10; //isometric from top to left bottom right

			global.ai_timer_min=room_speed*1;
			global.ai_timer_max=room_speed*2;

			global.cost_journalist=2.5;	//3
			global.cost_slow=10;		//10
			global.cost_fast=6;		//5.5
			global.cost_ranged=4;		//4

			global.journalist_spd=.7;
			global.journalist_str=.1;
			global.journalist_def=1;

			global.slow_spd=.6;
			global.slow_str=1;
			global.slow_def=2.3;

			global.fast_spd=1.3;
			global.fast_str=1;
			global.fast_def=1;

			global.ranged_spd=.5;
			global.ranged_str=.3;
			global.ranged_def=.3;

			global.violence=30;// % of death chance

			global.rebel_spread=100;
			global.rebel_wall_density=20;
			global.rebel_slow_density=10//10;
			global.rebel_fast_density=10//4;
			global.rebel_ranged_density=5//3;
			global.rebel_journalist_density=1;

			global.police_spread=20//5;
			global.police_wall_density=6//2;
			global.police_slow_density=3;
			global.police_fast_density=2;
			global.police_ranged_density=1;
			global.police_journalist_density=1;
		break;
	
		//Tahrir 3
		case rm_tahrir3:
			global.tilt=70; //isometric from top to left bottom right

			global.initial_points=50;
			global.points_per_second=2.5//.75;

			global.ai_timer_min=5//room_speed*1;
			global.ai_timer_max=room_speed*1;

			global.cost_journalist=3;	//3
			global.cost_slow=10;		//10
			global.cost_fast=6;		//5.5
			global.cost_ranged=4;		//4

			global.journalist_spd=.7;
			global.journalist_str=.1;
			global.journalist_def=1;

			global.slow_spd=.6;
			global.slow_str=1;
			global.slow_def=2.3;

			global.fast_spd=1.6//1.3;
			global.fast_str=1;
			global.fast_def=1;

			global.ranged_spd=.5;
			global.ranged_str=.3;
			global.ranged_def=.3;

			global.violence=50;// % of death chance

			global.rebel_spread=100;
			global.rebel_wall_density=15//10;
			global.rebel_slow_density=6//10;
			global.rebel_fast_density=3//4;
			global.rebel_ranged_density=4//3;
			global.rebel_journalist_density=1;

			global.police_spread=50//5;
			global.police_wall_density=2;
			global.police_slow_density=3;
			global.police_fast_density=2;
			global.police_ranged_density=1;
			global.police_journalist_density=1;
		break;
	
		//Tahrir4
		case rm_tahrir4:
			global.tilt=30; //isometric from top to left bottom right

			global.ai_timer_min=room_speed*1;
			global.ai_timer_max=room_speed*4;

			global.cost_journalist=3;	//3
			global.cost_slow=10;		//10
			global.cost_fast=6;		//5.5
			global.cost_ranged=4;		//4

			global.journalist_spd=.7;
			global.journalist_str=.1;
			global.journalist_def=1;

			global.slow_spd=.6;
			global.slow_str=1;
			global.slow_def=2.3;

			global.fast_spd=1.5;
			global.fast_str=1;
			global.fast_def=1;

			global.ranged_spd=.5;
			global.ranged_str=.3;
			global.ranged_def=.3;

			global.violence=75;// % of death chance

			global.rebel_spread=100;
			global.rebel_wall_density=10;
			global.rebel_slow_density=10;
			global.rebel_fast_density=4;
			global.rebel_ranged_density=3;
			global.rebel_journalist_density=1;

			global.police_spread=50//5;
			global.police_wall_density=2;
			global.police_slow_density=3;
			global.police_fast_density=2;
			global.police_ranged_density=1;
			global.police_journalist_density=1;
		break;
	
		//Tahrir5
		case rm_tahrir5:
			global.tilt=-30; //isometric from top to left bottom right

			global.ai_timer_min=10//room_speed*1;
			global.ai_timer_max=room_speed*2;

			global.cost_journalist=3;	//3
			global.cost_slow=10;		//10
			global.cost_fast=5.5;		//5.5
			global.cost_ranged=4;		//4

			global.journalist_spd=.7;
			global.journalist_str=.1;
			global.journalist_def=1;

			global.slow_spd=.6;
			global.slow_str=1;
			global.slow_def=2.3;

			global.fast_spd=1.3;
			global.fast_str=1;
			global.fast_def=1;

			global.ranged_spd=.5;
			global.ranged_str=.3;
			global.ranged_def=.3;

			global.violence=80;//30;// % of death chance

			global.rebel_spread=100;
			global.rebel_wall_density=5;
			global.rebel_slow_density=3;
			global.rebel_fast_density=3;
			global.rebel_ranged_density=1;
			global.rebel_journalist_density=1;

			global.police_spread=50;
			global.police_wall_density=2;
			global.police_slow_density=3;
			global.police_fast_density=3;
			global.police_ranged_density=1;
			global.police_journalist_density=1;
		break;
	
	////////////EXTRA///////////
	
		//Oakland
		case rm_occupy:
			global.tilt=-40; //isometric from top to left bottom right

			global.ai_timer_min=room_speed*1;
			global.ai_timer_max=room_speed*6;

			global.cost_journalist=1.5;	//3
			global.cost_slow=6;		//10
			global.cost_fast=10;		//5.5
			global.cost_ranged=10;		//4

			global.journalist_spd=1.5//.7;
			global.journalist_str=.05//.1;
			global.journalist_def=1;

			global.slow_spd=.4//.6;
			global.slow_str=1;
			global.slow_def=1//2.3;

			global.fast_spd=1.5//1.3;
			global.fast_str=2//1;
			global.fast_def=.5//1;

			global.ranged_spd=.5;
			global.ranged_str=.5//.3;
			global.ranged_def=.3;

			global.violence=10;// % of death chance

			global.rebel_spread=100;
			global.rebel_wall_density=15//10;
			global.rebel_slow_density=10//10;
			global.rebel_fast_density=4;
			global.rebel_ranged_density=3;
			global.rebel_journalist_density=2//1;

			global.police_spread=2//5;
			global.police_wall_density=3//2;
			global.police_slow_density=5//3;
			global.police_fast_density=10//2;
			global.police_ranged_density=3//1;
			global.police_journalist_density=1;
		break;
	
		//Ukraine
		case rm_ukraine:
			global.tilt=-20//0; //isometric from top to left bottom right

			global.ai_timer_min=5//room_speed*1;
			global.ai_timer_max=60//room_speed*6;

			global.cost_journalist=10;	//3
			global.cost_slow=5;		//10
			global.cost_fast=2.5;		//5.5
			global.cost_ranged=6;		//4

			global.journalist_spd=2//.7;
			global.journalist_str=.3//.1;
			global.journalist_def=1.5//1;

			global.slow_spd=.6;
			global.slow_str=1;
			global.slow_def=2.3;

			global.fast_spd=1.5//1.3;
			global.fast_str=.66//1;
			global.fast_def=1;

			global.ranged_spd=.5;
			global.ranged_str=.5//.3;
			global.ranged_def=1//.3;

			global.violence=60;// % of death chance

			global.rebel_spread=60//100;
			global.rebel_wall_density=10;
			global.rebel_slow_density=8;
			global.rebel_fast_density=4;
			global.rebel_ranged_density=6//3;
			global.rebel_journalist_density=3//1;

			global.police_spread=10//5;
			global.police_wall_density=6//2;
			global.police_slow_density=4//3;
			global.police_fast_density=5//2;
			global.police_ranged_density=1;
			global.police_journalist_density=1;
		break;
	
		//NoMUOS
		case rm_notav_extra1:
			global.tilt=10; //isometric from top to left bottom right

			global.cost_journalist=4;	//3
			global.cost_slow=7;			//10
			global.cost_fast=6;			//5.5
			global.cost_ranged=4;		//4

			global.slow_str=.5//1;
			global.slow_def=3//2.3;
			global.fast_str=1.25//1;
			global.fast_def=1;
			global.ranged_str=.3;
			global.ranged_def=.3;

			global.rebel_wall_density=5;
			global.police_wall_density=5;
			global.police_slow_density=2;
			global.police_fast_density=1;
		break;
	
		//Roma
		case rm_notav_extra2:
			global.tilt=-30; //isometric from top to left bottom right

			global.ai_timer_min=room_speed*1;
			global.ai_timer_max=room_speed*5;

			global.cost_journalist=1;	//3
			global.cost_slow=15;		//10
			global.cost_fast=7;			//5.5
			global.cost_ranged=10;		//4

			global.slow_str=1.5;//1;
			global.slow_def=2.3;
			global.fast_str=1.5//1;
			global.fast_def=.75//1;
			global.ranged_str=.5//.3;
			global.ranged_def=.5//.3;

			global.rebel_wall_density=10;
			global.police_wall_density=5;
			global.police_slow_density=5;
			global.police_fast_density=3;
		break;
	
		//Taksim Square
		case rm_taksim:
			global.tilt=15; //isometric from top to left bottom right

			global.ai_timer_min=room_speed*1;
			global.ai_timer_max=room_speed*3//6;

			global.locked_journalists_timer=room_speed*6;
			global.cost_journalist=2;	//3
			global.cost_slow=12;		//10
			global.cost_fast=4;			//5.5
			global.cost_ranged=5;		//4

			global.journalist_spd=2;//.7
			global.journalist_str=.1;
			global.journalist_def=1;

			global.slow_spd=.5//.6;
			global.slow_str=2//1;
			global.slow_def=2.3;

			global.fast_spd=1.5//1.3;
			global.fast_str=.5//1;
			global.fast_def=1;

			global.ranged_spd=.4//.5;
			global.ranged_str=.75//.3;
			global.ranged_def=.3;

			global.violence=30;// % of death chance

			global.rebel_spread=150//100;
			global.rebel_wall_density=15//10;
			global.rebel_slow_density=10//10;
			global.rebel_fast_density=8//4;
			global.rebel_ranged_density=6//3;
			global.rebel_journalist_density=3//1;

			global.police_spread=10//5;
			global.police_wall_density=3//2;
			global.police_slow_density=5//3;
			global.police_fast_density=3//2;
			global.police_ranged_density=1;
			global.police_journalist_density=1;
		break;
	
		//Syntagma Square
		case rm_syntagma:
			global.tilt=-60; //isometric from top to left bottom right

			global.ai_timer_min=room_speed*1;
			global.ai_timer_max=room_speed*6;

			global.cost_journalist=2;	//3
			global.cost_slow=8;		//10
			global.cost_fast=6;		//5.5
			global.cost_ranged=5;		//4

			global.journalist_spd=.5;//.7
			global.journalist_str=.1;
			global.journalist_def=1;

			global.slow_spd=.5;//.6
			global.slow_str=1.5;//1
			global.slow_def=2.3;

			global.fast_spd=1.5;//1.3
			global.fast_str=.75;//1
			global.fast_def=1;

			global.ranged_spd=1;//.5
			global.ranged_str=.5;//.3
			global.ranged_def=.3;//.3

			global.violence=30;// % of death chance

			global.rebel_spread=100;
			global.rebel_wall_density=10;
			global.rebel_slow_density=10;
			global.rebel_fast_density=4;
			global.rebel_ranged_density=3;
			global.rebel_journalist_density=1;

			global.police_spread=5;
			global.police_wall_density=2;
			global.police_slow_density=3;
			global.police_fast_density=2;
			global.police_ranged_density=1;
			global.police_journalist_density=1;
		break;
	
		//Burnt Library
		case rm_library:
			global.tilt=10; //isometric from top to left bottom right

			global.ai_timer_min=room_speed*irandom_range(1,2);
			global.ai_timer_max=room_speed*irandom_range(1,7);

			global.cost_journalist=5;	//3
			global.cost_slow=5;		//10
			global.cost_fast=5;		//5.5
			global.cost_ranged=5;		//4

			global.journalist_spd=random_range(.5,2)//.7;
			global.journalist_str=.1;
			global.journalist_def=1;

			global.slow_spd=random_range(.4,.8)//.6;
			global.slow_str=random_range(1,1.5)//1;
			global.slow_def=2.3;

			global.fast_spd=random_range(1,1.5)//1.3;
			global.fast_str=random_range(.5,1)//1;
			global.fast_def=1;

			global.ranged_spd=random_range(.3,.7)//.5;
			global.ranged_str=random_range(.2,.5)//.3;
			global.ranged_def=random_range(.2,.5)//.3;

			global.violence=90;//30;// % of death chance

			global.rebel_spread=100;
			global.rebel_wall_density=5;
			global.rebel_slow_density=3;
			global.rebel_fast_density=3;
			global.rebel_ranged_density=1;
			global.rebel_journalist_density=1;

			global.police_spread=20;
			global.police_wall_density=2;
			global.police_slow_density=3;
			global.police_fast_density=3;
			global.police_ranged_density=1;
			global.police_journalist_density=1;
		break;
	
		//Korean Training
		case rm_korea:
			global.tilt=15; //isometric from top to left bottom right

			global.ai_timer_min=room_speed*1;
			global.ai_timer_max=room_speed*6;

			global.points_per_second=2//.75;
			global.initial_points=5;

			global.locked_journalists_timer=room_speed*15;
			global.cost_journalist=10;	//3
			global.cost_slow=10;		//10
			global.cost_fast=5.5;		//5.5
			global.cost_ranged=4;		//4

			global.journalist_spd=.7;
			global.journalist_str=.1;
			global.journalist_def=1;

			global.slow_spd=.25//.6;
			global.slow_str=2//1;
			global.slow_def=2.5//2.3;

			global.fast_spd=2//1.3;
			global.fast_str=.5//1;
			global.fast_def=.5//1;

			global.ranged_spd=.5//.5;
			global.ranged_str=.5//.3;
			global.ranged_def=.25//.3;

			global.violence=10;// % of death chance

			global.rebel_spread=100;
			global.rebel_wall_density=5;
			global.rebel_slow_density=8;
			global.rebel_fast_density=5;
			global.rebel_ranged_density=3;
			global.rebel_journalist_density=1;

			global.police_spread=2;
			global.police_wall_density=2;
			global.police_slow_density=5;
			global.police_fast_density=4;
			global.police_ranged_density=1;
			global.police_journalist_density=1;
		break;
	
		//RANDOM
		case rm_indignados_complete:
			global.tilt=random_range(-5,80); //isometric from top to left bottom right
			global.points_per_second=random_range(.75,2);
			global.initial_points=irandom_range(10,50);
			global.locked_journalists_timer=room_speed*irandom_range(1,8);
			global.cost_journalist=irandom_range(1.5,4);
			global.cost_slow=irandom_range(6,10);
			global.cost_fast=irandom_range(5.5,8);
			global.cost_ranged=irandom_range(4,12);
			global.journalist_spd=random_range(.5,1);
			global.journalist_str=random_range(.1,1);
			global.journalist_def=random_range(2,3);
			global.slow_spd=random_range(.5,1);
			global.slow_str=random_range(.5,1.5);
			global.slow_def=random_range(1,3.15);
			global.fast_spd=random_range(1.5,1.5);
			global.fast_str=random_range(1,1.5);
			global.fast_def=random_range(.75,1.5);
			global.ranged_spd=random_range(.35,.5);
			global.ranged_str=random_range(.3,.6);
			global.ranged_def=random_range(.3,.5);
			global.violence=random_range(5,30);// % of death chance
			global.rebel_spread=random_range(5,100);
			global.rebel_wall_density=irandom_range(2,10);
			global.rebel_slow_density=irandom_range(2,10);
			global.rebel_fast_density=irandom_range(2,8);
			global.rebel_ranged_density=irandom_range(2,5);
			global.rebel_journalist_density=irandom_range(1,2);
			global.police_spread=random_range(5,6);
			global.police_wall_density=irandom_range(2,5);
			global.police_slow_density=irandom_range(2,5);
			global.police_fast_density=irandom_range(2,6);
			global.police_ranged_density=irandom_range(1,1);
			global.police_journalist_density=irandom_range(1,1);
		break;
		case rm_notav_complete:
			global.tilt=random_range(-20,30); //isometric from top to left bottom right
			global.points_per_second=random_range(.75,1.5);
			global.initial_points=irandom_range(10,30);
			global.locked_journalists_timer=room_speed*irandom_range(1,8);
			global.cost_journalist=irandom_range(2,5);
			global.cost_slow=irandom_range(8,10);
			global.cost_fast=irandom_range(5.5,6);
			global.cost_ranged=irandom_range(3,4);
			global.slow_str=random_range(1,1);
			global.slow_def=random_range(2,3);
			global.fast_str=random_range(1,1.2);
			global.fast_def=random_range(.75,1.5);
			global.ranged_str=random_range(.3,.3);
			global.ranged_def=random_range(.3,.3);
			global.rebel_wall_density=irandom_range(10,35);
			global.police_wall_density=irandom_range(10,20);
			global.police_slow_density=irandom_range(2,8);
			global.police_fast_density=irandom_range(2,4);
		break;
		case rm_keratea_complete:
			global.tilt=random_range(20,30); //isometric from top to left bottom right
			global.points_per_second=random_range(.75,1.5);
			global.locked_journalists_timer=room_speed*irandom_range(1,2);
			global.cost_journalist=irandom_range(3,6);
			global.cost_slow=irandom_range(10,12);
			global.cost_fast=irandom_range(4,6);
			global.cost_ranged=irandom_range(4,10);
			global.journalist_spd=random_range(.7,2);
			global.journalist_str=random_range(.1,.1);
			global.journalist_def=random_range(.75,1);
			global.slow_spd=random_range(.5,.6);
			global.slow_str=random_range(1,2);
			global.slow_def=random_range(2.3,2.3);
			global.fast_spd=random_range(1.3,1.5);
			global.fast_str=random_range(.5,1);
			global.fast_def=random_range(1,1);
			global.ranged_spd=random_range(.4,.5);
			global.ranged_str=random_range(.3,.75);
			global.ranged_def=random_range(.3,.3);
			global.violence=random_range(30,30);// % of death chance
			global.rebel_wall_density=irandom_range(2,15);
			global.rebel_slow_density=irandom_range(4,10);
			global.rebel_fast_density=irandom_range(3,4);
			global.rebel_ranged_density=irandom_range(3,6);
			global.rebel_journalist_density=irandom_range(1,3);
			global.police_spread=random_range(5,10);
			global.police_wall_density=irandom_range(2,3);
			global.police_slow_density=irandom_range(3,3);
			global.police_fast_density=irandom_range(2,3);
			global.police_ranged_density=irandom_range(1,1);
			global.police_journalist_density=irandom_range(1,1);
		break;
		case rm_tahrir_complete:
			global.tilt=random_range(-30,70); //isometric from top to left bottom right
			global.points_per_second=random_range(.75,2);
			global.initial_points=irandom_range(1,10);
			global.locked_journalists_timer=room_speed*irandom_range(1,15);
			global.cost_journalist=irandom_range(2,10);
			global.cost_slow=irandom_range(10,10);
			global.cost_fast=irandom_range(5,6);
			global.cost_ranged=irandom_range(4,4);
			global.journalist_spd=random_range(.7,.7);
			global.journalist_str=random_range(.1,.1);
			global.journalist_def=random_range(1,2.3);
			global.slow_spd=random_range(.25,.6);
			global.slow_str=random_range(1,2);
			global.slow_def=random_range(2.3,2.5);
			global.fast_spd=random_range(1.3,2);
			global.fast_str=random_range(.5,1);
			global.fast_def=random_range(.5,1);
			global.ranged_spd=random_range(.5,.5);
			global.ranged_str=random_range(.3,.5);
			global.ranged_def=random_range(.3,.5);
			global.violence=random_range(10,90);// % of death chance
			global.rebel_wall_density=irandom_range(5,20);
			global.rebel_slow_density=irandom_range(5,10);
			global.rebel_fast_density=irandom_range(2,10);
			global.rebel_ranged_density=irandom_range(1,5);
			global.rebel_journalist_density=irandom_range(1,1);
			global.police_spread=random_range(2,20);
			global.police_wall_density=irandom_range(2,8);
			global.police_slow_density=irandom_range(3,5);
			global.police_fast_density=irandom_range(2,6);
			global.police_ranged_density=irandom_range(1,1);
			global.police_journalist_density=irandom_range(1,1);
		break;
		case rm_random:
			global.tilt=random_range(-30,80); //isometric from top to left bottom right
			global.points_per_second=random_range(.75,2);
			global.initial_points=irandom_range(1,50);
			global.locked_journalists_timer=room_speed*irandom_range(1,15);
			global.cost_journalist=irandom_range(1,10);
			global.cost_slow=irandom_range(6,12);
			global.cost_fast=irandom_range(5,8);
			global.cost_ranged=irandom_range(3,12);
			global.journalist_spd=random_range(.5,2);
			global.journalist_str=random_range(.1,1);
			global.journalist_def=random_range(.75,3);
			global.slow_spd=random_range(.25,1);
			global.slow_str=random_range(.5,2);
			global.slow_def=random_range(1,3.15);
			global.fast_spd=random_range(1,2);
			global.fast_str=random_range(.5,1.5);
			global.fast_def=random_range(.5,1.5);
			global.ranged_spd=random_range(.35,.5);
			global.ranged_str=random_range(.3,.75);
			global.ranged_def=random_range(.3,.5);
			global.violence=random_range(5,95);// % of death chance
			global.rebel_spread=random_range(1,100);
			global.rebel_wall_density=irandom_range(2,20);
			global.rebel_slow_density=irandom_range(2,20);
			global.rebel_fast_density=irandom_range(2,10);
			global.rebel_ranged_density=irandom_range(2,10);
			global.rebel_journalist_density=irandom_range(1,2);
			global.police_spread=random_range(1,10);
			global.police_wall_density=irandom_range(2,10);
			global.police_slow_density=irandom_range(2,10);
			global.police_fast_density=irandom_range(2,10);
			global.police_ranged_density=irandom_range(1,2);
			global.police_journalist_density=irandom_range(1,2);
		break;
	}
	
	scr_editor_balancing();

	global.shooting_chance=global.violence/3;


}
