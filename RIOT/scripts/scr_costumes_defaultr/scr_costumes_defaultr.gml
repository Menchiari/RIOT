function scr_costumes_defaultr() {
	//generic rebels
	color=c_white;
	skin=spr_dummy_skin;
	skin_color=make_colour_hsv(random_range(10,20),90,random_range(95,250));
	head=choose(spr_head_p_beard,spr_head_p_beard2,spr_head_p_kid,spr_head_p_old,spr_head_p_pizzetto,spr_head_p_stash,spr_head_p_thinbeard,spr_head_r_beardlong,spr_head_r_cresta,spr_head_r_erpelliccia,spr_head_r_lenny2010,spr_head_r_ponytail,spr_head_r_rastalimp,spr_head_r_rastaspike,spr_head_rf_moved,spr_head_rf_red,spr_head_rf_short,spr_head_rf_straight);
	head_color=make_color_hsv(random_range(5,25),random_range(0,90),random_range(0,100));
	body=spr_dummy_body;
	body_color=make_colour_hsv(random_range(0,190),random_range(0,90),random_range(80,180));
	body_alpha=choose(0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1);
	vest=spr_dummy_vest;
	vest_color=choose(c_black,c_black,c_gray,c_dkgray);
	vest_alpha=0;
	legs=spr_dummy_pants;
	legs_color=make_colour_hsv(random_range(0,190),random_range(0,90),random_range(80,180));
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

	scr_editor_costumes_rebels();
}
