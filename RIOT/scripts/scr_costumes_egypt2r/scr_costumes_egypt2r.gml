function scr_costumes_egypt2r() {
	//generic rebels
	color=c_white;
	skin=spr_dummy_skin;
	skin_color=make_colour_hsv(random_range(10,20),90,random_range(80,160));
	head=choose(spr_head_p_beard,spr_head_p_beard2,spr_head_p_kid,spr_head_p_old,spr_head_p_pizzetto,spr_head_p_stash,spr_head_p_thinbeard,spr_head_r_beardlong,spr_head_r_cresta,spr_head_r_erpelliccia,spr_head_r_lenny2010,spr_head_r_ponytail,spr_head_r_rastalimp,spr_head_r_rastaspike,spr_head_rf_moved,spr_head_rf_red,spr_head_rf_short,spr_head_rf_straight);
	head_color=make_color_hsv(random_range(5,25),random_range(0,90),random_range(0,100));
	body=spr_dummy_body;
	body_color=make_colour_hsv(random_range(0,190),random_range(0,250),random_range(0,60));
	body_alpha=choose(0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1);
	vest=spr_dummy_vest;
	vest_color=choose(c_black,c_black,c_gray,c_dkgray);
	vest_alpha=0;
	legs=spr_dummy_pants;
	legs_color=make_colour_hsv(random_range(0,190),random_range(0,250),random_range(0,100));
	legs_alpha=1;
	gear_1=spr_gear_kefia;
	gear_1_color=choose(c_white,c_white,c_white,c_white,c_white,c_white,c_white,c_white,c_white,c_white,c_white,c_gray,c_red,c_yellow);
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
			anim_idle=choose(anim.idle_agitated,anim.idle,anim.hands_up_idle);
			anim_walk=choose(anim.walk_forward,anim.walk_boss,anim.walk_angry);
			anim_walk_backwards=choose(anim.walk_backwards,anim.walk_backwards);
			anim_run=choose(anim.run,anim.run_charge);
			anim_escape=choose(anim.run_escape,anim.run_panic);
			anim_attack=choose(anim.atk_talk_agitated,anim.atk_talk_calm,anim.hands_up_idle);
		break;
		case 1://ranged
			atk_range=global.range_ranged;
			anim_idle=choose(anim.idle,anim.idle_agitated,anim.idle_angry,anim.idle_handsinpocket,anim.idle_smoke);
			anim_walk=choose(anim.walk_forward,anim.walk_angry,anim.walk_boss);
			anim_walk_backwards=anim.walk_backwards;
			anim_run=choose(anim.run,anim.run_charge);
			anim_escape=choose(anim.run_escape,anim.run_panic);
			anim_attack=choose(anim.atk_rng_far,anim.atk_rng_heavy,anim.atk_rng_light,anim.atk_rng_medium,anim.atk_rng_slingshot);

			gear_3=choose(spr_gear_balaclava_1,spr_gear_balaclava_1,spr_gear_balaclava_1,spr_gear_kefia,spr_gear_helmet,spr_gear_helmet,spr_gear_helmet,spr_gear_helmet_custom,spr_gear_helmet_heavy_custom,spr_gear_helmet_italy);
			gear_3_color=make_colour_hsv(random_range(0,150),random_range(0,90),random_range(0,220));
			var strange_color=random_range(0,100);
			if strange_color<20 {gear_3_color=merge_color(c_gray,make_colour_hsv(random_range(0,250),random_range(0,220),random_range(10,250)),random_range(.3,.8));}
			gear_3_alpha=1;
		break;
		case 2://journalists
			anim_idle=choose(anim.picture_camera,anim.picture_camera,anim.picture_camera,anim.picture_camera,anim.picture_camera,anim.picture_camera,anim.picture_smartphone);
			anim_walk=choose(anim.walk_forward,anim.walk_angry,anim.walk_boss);
			anim_walk_backwards=anim.walk_backwards;
			anim_run=choose(anim.run,anim.run_charge);
			anim_escape=choose(anim.run,anim.run_escape,anim.run_panic);
			anim_attack=choose(anim.picture_camera,anim.picture_camera,anim.picture_camera,anim.picture_camera,anim.picture_smartphone,anim.atk_talk_calm);
		
			gear_1=choose(spr_gear_kefia,spr_gear_helmet,spr_gear_bag_left,spr_gear_bag_right);
			gear_1_color=make_colour_hsv(random_range(0,150),random_range(0,90),random_range(0,220));
			var strange_color=random_range(0,100);
			if strange_color<15 {gear_1_color=make_colour_hsv(random_range(0,250),random_range(0,220),random_range(10,250));}
			gear_1_alpha=choose(0,0,1);
		
			gear_3=choose(spr_gear_camera_5d,spr_gear_camera_professional,spr_gear_camera_television);
			gear_3_color=c_white;
			gear_3_alpha=1;
		break;
		case 3://fast
			anim_idle=choose(anim.idle,anim.idle_agitated,anim.idle_angry,anim.idle_handsinpocket,anim.idle_smoke);
			anim_walk=choose(anim.walk_forward,anim.walk_angry,anim.walk_boss);
			anim_walk_backwards=anim.walk_backwards;
			anim_run=choose(anim.run,anim.run_charge);
			anim_escape=choose(anim.run_escape,anim.run_panic);
			anim_attack=choose(anim.atk_kick_floor,anim.atk_kick_high,anim.atk_knee,anim.atk_punch_high,anim.atk_punch_low);
		
			gear_3=choose(spr_gear_balaclava_1,spr_gear_helmet,spr_gear_helmet,spr_gear_helmet,spr_gear_elbows,spr_gear_kefia);
			gear_3_color=make_colour_hsv(random_range(0,250),random_range(0,90),random_range(40,220));
			gear_3_alpha=1;
		break;
		default:
		break;
	}


}
