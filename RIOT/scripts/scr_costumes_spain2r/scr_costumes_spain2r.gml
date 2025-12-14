function scr_costumes_spain2r() {
	//generic rebels
	color=c_white;
	skin=spr_dummy_skin;
	skin_color=make_colour_hsv(random_range(10,20),90,random_range(120,250));
	head=choose(spr_head_p_beard,spr_head_p_beard2,spr_head_p_kid,spr_head_p_old,spr_head_p_pizzetto,spr_head_p_stash,spr_head_p_thinbeard,spr_head_r_beardlong,spr_head_r_cresta,spr_head_r_lenny2010);
	head_color=make_color_hsv(random_range(5,25),random_range(0,90),random_range(0,100));
	body=spr_dummy_body;
	body_color=make_colour_hsv(random_range(0,250),random_range(0,100),random_range(0,110));
	body_alpha=choose(0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1);
	vest=spr_dummy_vest;
	vest_color=choose(c_black,c_black,c_gray,c_dkgray);
	vest_alpha=0;
	legs=spr_dummy_pants;
	legs_color=make_colour_hsv(random_range(0,190),random_range(0,90),random_range(40,190));
	legs_alpha=1;
	gear_1=spr_gear_kefia;
	gear_1_color=make_colour_hsv(random_range(0,150),random_range(0,90),random_range(0,220));
	var strange_color=random_range(0,100);
	if strange_color<3 {gear_1_color=make_colour_hsv(random_range(0,250),random_range(0,220),random_range(10,250));}
	gear_1_alpha=choose(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1);
	gear_2=choose(spr_gear_bag_left,spr_gear_bag_right,spr_gear_elbows,spr_gear_kneepads);
	gear_2_color=choose(c_white,c_white,c_white,c_white,c_white,c_white,c_white,c_white,c_gray,c_black);
	gear_2_alpha=choose(0,0,0,1);
	gear_3=choose(spr_gear_bag_left,spr_gear_bag_right,spr_gear_elbows,spr_gear_kneepads);
	gear_3_color=choose(c_white,c_white,c_white,c_white,c_white,c_white,c_white,c_white,c_gray,c_black);
	gear_3_alpha=choose(0,0,0,0,0,1);

	switch(pawn_type)
	{
		case 0://slow
			anim_idle=choose(anim.idle,anim.idle_agitated,anim.idle_angry,anim.idle_handsinpocket,anim.idle_smoke);
			anim_walk=choose(anim.walk_forward,anim.walk_boss);
			anim_run=choose(anim.run,anim.run_charge);
			anim_escape=choose(anim.run_escape,anim.run,anim.run_charge);
			anim_attack=choose(anim.atk_rng_far,anim.atk_rng_heavy,anim.atk_rng_light,anim.atk_rng_medium,anim.atk_rng_slingshot,anim.atk_kick_floor,anim.atk_kick_high,anim.atk_knee,anim.atk_punch_high,anim.atk_punch_low,anim.taunt_fuckyou,anim.taunt_finger,anim.taunt_mooning,anim.taunt_suckit,anim.taunt_whatup,anim.taunt_megaphone_1,anim.taunt_megaphone_2,anim.taunt_backpack,anim.taunt_clap_high);
			body=choose(spr_dummy_body,spr_uniform_custom_longsleeves);
			body_color=make_colour_hsv(0,0,random_range(40,90));
			gear_3=choose(spr_gear_balaclava_1,spr_gear_balaclava_1,spr_gear_balaclava_1,spr_gear_kefia,spr_gear_helmet,spr_gear_helmet,spr_gear_helmet,spr_gear_helmet_custom,spr_gear_helmet_heavy_custom,spr_gear_helmet_italy);
			gear_3_color=make_colour_hsv(random_range(0,250),random_range(0,90),random_range(0,100));
			gear_3_alpha=1;	break;
		case 1://ranged
			atk_range=global.range_ranged;
			anim_idle=choose(anim.idle,anim.idle_agitated,anim.idle_angry,anim.idle_handsinpocket,anim.idle_smoke);
			anim_walk=choose(anim.walk_forward,anim.walk_angry);
			anim_run=choose(anim.run,anim.run_charge);
			anim_escape=choose(anim.run_escape,anim.run_panic);
			anim_attack=choose(anim.atk_rng_far,anim.atk_rng_heavy,anim.atk_rng_light,anim.atk_rng_medium,anim.atk_rng_slingshot);

			gear_3=choose(spr_gear_balaclava_1,spr_gear_balaclava_1,spr_gear_balaclava_1,spr_gear_kefia,spr_gear_helmet,spr_gear_helmet,spr_gear_helmet,spr_gear_helmet_custom,spr_gear_helmet_heavy_custom,spr_gear_helmet_italy);
			gear_3_color=make_colour_hsv(random_range(0,250),random_range(0,250),random_range(0,100));
			gear_3_alpha=1;
		break;
		case 2://journalists
			anim_idle=choose(anim.picture_camera,anim.picture_camera,anim.picture_camera,anim.picture_camera,anim.picture_camera,anim.picture_camera,anim.picture_smartphone);
			anim_walk=choose(anim.walk_forward,anim.walk_angry,anim.walk_boss);
			anim_run=choose(anim.run,anim.run_charge);
			anim_escape=choose(anim.run,anim.run_escape,anim.run_panic);
			anim_attack=choose(anim.picture_camera,anim.picture_camera,anim.picture_camera,anim.picture_camera,anim.picture_smartphone,anim.atk_talk_calm);
		
			gear_1=choose(spr_gear_kefia,spr_gear_helmet,spr_gear_bag_left,spr_gear_bag_right);
			gear_1_color=make_colour_hsv(random_range(0,150),random_range(0,90),random_range(0,220));
			var strange_color=random_range(0,100);
			if strange_color<3 {gear_1_color=make_colour_hsv(random_range(0,250),random_range(0,220),random_range(10,250));}
			gear_1_alpha=choose(0,0,1);
			gear_2=choose(spr_gear_balaclava_1,spr_gear_balaclava_1,spr_gear_balaclava_1,spr_gear_kefia,spr_gear_helmet,spr_gear_helmet,spr_gear_helmet,spr_gear_helmet_custom,spr_gear_helmet_heavy_custom,spr_gear_helmet_italy);
			gear_2_color=make_colour_hsv(random_range(0,150),random_range(0,90),random_range(0,220));
			var strange_color=random_range(0,100);
			if strange_color<3 {gear_2_color=make_colour_hsv(random_range(0,250),random_range(0,220),random_range(10,250));}
			gear_2_alpha=1;		
			gear_3=choose(spr_gear_camera_5d,spr_gear_camera_professional,spr_gear_camera_television);
			gear_3_color=c_white;
			gear_3_alpha=1;
		break;
		case 3://fast
			anim_idle=choose(anim.idle,anim.idle_agitated,anim.idle_angry,anim.idle_handsinpocket,anim.idle_smoke);
			anim_walk=choose(anim.walk_forward,anim.walk_angry,anim.walk_boss);
			anim_run=choose(anim.run,anim.run_charge);
			anim_escape=choose(anim.run_escape,anim.run_panic);
			anim_attack=choose(anim.atk_kick_floor,anim.atk_kick_high,anim.atk_knee,anim.atk_punch_high,anim.atk_punch_low,anim.taunt_fuckyou,anim.taunt_finger,anim.taunt_mooning,anim.taunt_suckit,anim.taunt_whatup,anim.taunt_megaphone_1,anim.taunt_megaphone_2,anim.taunt_backpack,anim.taunt_clap_high);
		
			gear_3=choose(spr_gear_balaclava_1,spr_gear_helmet,spr_gear_helmet,spr_gear_helmet,spr_gear_elbows,spr_gear_kefia);
			gear_3_color=make_colour_hsv(random_range(0,250),random_range(0,90),random_range(40,220));
			gear_3_alpha=1;
		break;
		default:
		break;
	}


}
