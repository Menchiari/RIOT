///@description Police Unit Setup
function scr_costumes_turkeyp() {

	////greek police
	color=c_white;
	skin=spr_dummy_skin;
	skin_color=make_colour_hsv(random_range(10,20),90,random_range(50,100));
	head=choose(spr_head_p_beard,spr_head_p_beard2,spr_head_p_kid,spr_head_p_old,spr_head_p_pizzetto,spr_head_p_stash,spr_head_p_thinbeard);
	head_color=make_color_hsv(random_range(5,25),random_range(0,90),random_range(0,100));
	body=spr_uniform_custom_shortsleeves;
	body_color=make_colour_hsv(180,125,25);
	body_alpha=1;
	vest=choose(spr_gear_bag_left,spr_gear_bag_right,spr_gear_elbows,spr_gear_kneepads);
	vest_color=choose(c_black,c_white,c_gray,c_dkgray);
	vest_alpha=choose(0,1,1,1);
	legs=spr_dummy_pants;
	legs_color=c_white;
	legs_alpha=0;
	gear_1=spr_gear_baton;
	gear_1_color=c_white;
	gear_1_alpha=1;
	gear_2=spr_gear_shield;
	gear_2_color=c_ltgray;
	gear_2_alpha=1;
	gear_3=spr_gear_helmet;
	gear_3_color=c_white;
	gear_3_alpha=1;

	switch(pawn_type)
	{
		case 0://melee
			anim_idle=choose(anim.idle,anim.idle_agitated,anim.idle_angry,anim.idle_handsinpocket,anim.idle_smoke,anim.picture_smartphone);
			anim_walk=choose(anim.walk_forward,anim.walk_angry,anim.walk_boss);
			anim_run=choose(anim.run,anim.run_charge);
			anim_escape=choose(anim.run,anim.run,anim.run,anim.run,anim.run,anim.run,anim.run,anim.run,anim.run_escape,anim.run_panic);
			anim_attack=choose(anim.atk_kick_floor,anim.atk_kick_high,anim.atk_knee,anim.atk_punch_high,anim.atk_punch_low,anim.picture_smartphone);
		
			body=spr_uniform_custom_longsleeves;
			gear_2=spr_gear_shield;
			gear_2_color=c_blue;
			gear_2_alpha=.5;
		break;
		case 1://ranged
			atk_range=global.range_ranged;
			anim_idle=choose(anim.gun_idle,anim.gun_idle_relaxed,anim.gun_shoot_high,anim.gun_shoot_low,anim.gun_shoot_high,anim.gun_shoot_low);
			anim_walk=anim.gun_walk;
			anim_run=anim.gun_run;
			anim_escape=choose(anim.run_escape,anim.run_panic,anim.gun_run);
			anim_attack=choose(anim.atk_kick_floor,anim.atk_kick_high,anim.atk_knee,anim.atk_punch_high,anim.atk_punch_low);
			anim_ranged=choose(anim.gun_shoot_high,anim.gun_shoot_low);

			gear_2=spr_gear_sg;
			gear_2_color=c_white;
			gear_2_alpha=1;
			gear_3=choose(spr_gear_balaclava_1);
			gear_3_color=choose(c_white,c_white,c_white,c_white,c_white,c_white,c_white,c_white,c_gray,c_black);
			gear_3_alpha=1;
		break;
		case 2://journalists
			anim_idle=choose(anim.picture_camera,anim.picture_camera,anim.picture_camera,anim.picture_camera,anim.picture_camera,anim.picture_camera,anim.picture_smartphone);
			anim_walk=choose(anim.walk_forward,anim.walk_angry,anim.walk_boss);
			anim_run=choose(anim.run,anim.run_charge);
			anim_escape=choose(anim.run,anim.run,anim.run,anim.run,anim.run,anim.run,anim.run,anim.run,anim.run_escape,anim.run_panic);
			anim_attack=choose(anim.picture_camera,anim.picture_camera,anim.picture_camera,anim.picture_camera,anim.picture_smartphone,anim.atk_talk_calm);
		
			legs=spr_dummy_body;
			legs_color=make_colour_hsv(random_range(0,190),random_range(0,90),random_range(80,180));//make_colour_hsv(random_range(0,190),random_range(0,40),random_range(10,90));
			legs_alpha=choose(0,1,1,1,1,1,1,1,1,1,1,1,1,1,1);
			//body=choose(spr_uniform_greece_longsleeves,spr_uniform_greece_shortsleeves);
			gear_1=choose(spr_gear_camera_professional,spr_gear_camera_television);
			gear_1_color=c_white;
			gear_1_alpha=1;
			gear_2=choose(spr_gear_elbows,spr_gear_kneepads,spr_gear_bag_left,spr_gear_bag_right);
			gear_2_color=choose(c_white,c_white,c_white,c_white,c_white,c_black);
			gear_2_alpha=choose(0,1);
			gear_3=choose(spr_gear_helmet,spr_gear_helmet_custom,spr_gear_helmet_heavy_custom,spr_gear_balaclava_1,spr_gear_bag_left,spr_gear_bag_right);
			gear_3_color=choose(make_colour_hsv(random_range(0,150),random_range(0,90),random_range(0,150)),c_white,c_black);
			gear_3_alpha=choose(0,1,1);
		break;
		case 3://fast
			anim_idle=choose(anim.idle,anim.idle_agitated,anim.idle_angry,anim.idle_handsinpocket,anim.idle_smoke);
			anim_walk=choose(anim.walk_forward,anim.walk_angry,anim.walk_boss);
			anim_run=choose(anim.run,anim.run_charge);
			anim_escape=choose(anim.run,anim.run,anim.run,anim.run,anim.run,anim.run,anim.run,anim.run,anim.run_escape,anim.run_panic);
			anim_attack=choose(anim.atk_kick_floor,anim.atk_kick_high,anim.atk_knee,anim.atk_punch_high,anim.atk_punch_low);
			gear_2=spr_gear_shield_assault;
			gear_2_color=c_white;
			gear_2_alpha=choose(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1);
		break;
		default:
		break;
	}


}
