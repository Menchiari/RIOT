///@param target,enemy
function char_create_police(argument0, argument1) {
	init();
	image_speed=1;
	idle_frame=choose(irandom_range(462,473),irandom_range(477,481))
	image_index=idle_frame;
	target=argument0;//obj_wall_police;
	enemy=argument1;//obj_dummy;
	start_x=x;
	start_y=y;
	atk_range=10;
	atk_ranged=false;

	scr_costumes_police();

	dir=-1;
	r_dir=-1;
	f_dir=-1;
	dummy_speed=random_range(60,80);
	dummy_sprint=random_range(150,160);

	image_speed=.5;

	spawn_range=1;
	personal_space=1;

	panic=false;

	anim_idle=anim.idle;
	anim_walk=anim.walk_forward;
	anim_walk_backwards=anim.walk_backwards;
	anim_run=anim.run;
	anim_escape=anim.run_escape;
	anim_attack=anim.idle;
	anim_hurt=choose(anim.idle_bumped_left,anim.idle_bumped_right,anim.defense_idle,anim.idle_radio,anim.hit_back,anim.hit_front,anim.hit_front_face,anim.hit_front_stomach,anim.hit_scared);
	anim_ranged=choose(anim.atk_rng_far,anim.atk_rng_heavy,anim.atk_rng_light,anim.atk_rng_medium,anim.atk_rng_slingshot);



}
