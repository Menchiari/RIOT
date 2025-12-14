function scr_editor_balancing(){

	if room==rm_rotterdam // Change the name of the level and balance it
	{
		//is it night or not
		global.night=false;
		global.tilt=50; //isometric from top left to bottom right
		
		//starting points
		global.points_per_second=.5//.75;
		global.max_points=99.9;
		global.initial_points=0;
		
		//cost of the units (use higher numbers to make units less frequent)
		global.cost_journalist=1;
		global.cost_slow=5;
		global.cost_fast=15;
		global.cost_ranged=15;

		//random balancing handicap between units
		global.randomness=.015;
		
		//change stats of all units
		global.journalist_spd=.7;
		global.journalist_str=.1;
		global.journalist_def=1;
		global.journalist_freq=1;
		global.journalist_hp=5;
		global.journalist_points_per_second=.5;
		global.journalist_max_points=5;

		global.slow_spd=.6;
		global.slow_str=.5;
		global.slow_def=2.3;
		global.slow_freq=1;
		global.slow_hp=10;

		global.fast_spd=1.3;
		global.fast_str=.4;
		global.fast_def=1;
		global.fast_freq=1;
		global.fast_hp=10;

		global.ranged_spd=.5;
		global.ranged_str=.15;
		global.ranged_def=.3;
		global.ranged_freq=1;
		global.ranged_hp=10;

		global.violence=5;// % of death chance
		global.violence_timer=room_speed*15

		//crowd
		global.rebel_spread=100;
		global.rebel_wall_spread=100;
		global.rebel_wall_density=50;
		global.rebel_slow_density=20;
		global.rebel_fast_density=1;
		global.rebel_ranged_density=1;
		global.rebel_journalist_density=5;

		global.police_spread=2;
		global.police_wall_density=10;
		global.police_slow_density=10;
		global.police_fast_density=5;
		global.police_ranged_density=1;
		global.police_journalist_density=1;
	}

}