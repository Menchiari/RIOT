///@param target,enemy
function char_create_rebels(argument0, argument1) {
	init();
	image_speed=1;
	idle_frame=choose(irandom_range(462,473),irandom_range(477,481))
	image_index=idle_frame;
	target=argument0;
	enemy=argument1;
	start_x=x;
	start_y=y;
	atk_range=10;
	atk_ranged=false;

	scr_costumes_rebels();

	dir=1;
	r_dir=1;
	f_dir=1;
	dummy_speed=random_range(40,80);
	dummy_sprint=random_range(150,200);

	image_speed=.5;

	spawn_range=random_range(-150,150);
	personal_space=50;

	panic=false;

	anim_idle=anim.idle;
	anim_walk=anim.walk_forward;
	anim_walk_backwards=anim.walk_backwards;
	anim_run=anim.run;
	anim_escape=anim.run_escape;
	anim_attack=anim.idle;
	anim_hurt=anim.hit_front;
	anim_ranged=choose(anim.atk_rng_far,anim.atk_rng_heavy,anim.atk_rng_light,anim.atk_rng_medium,anim.atk_rng_slingshot);


}
