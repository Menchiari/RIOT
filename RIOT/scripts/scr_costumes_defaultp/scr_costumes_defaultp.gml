function scr_costumes_defaultp() {
	//italian police
	color=c_white;
	skin=spr_dummy_skin;
	skin_color=make_colour_hsv(random_range(10,20),90,random_range(50,100));
	head=choose(spr_head_p_beard,spr_head_p_beard2,spr_head_p_kid,spr_head_p_old,spr_head_p_pizzetto,spr_head_p_stash,spr_head_p_thinbeard);
	head_color=make_color_hsv(random_range(5,25),random_range(0,90),random_range(0,100));
	body=spr_uniform_italy_shortsleeves;
	body_color=c_white;
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
	gear_3=spr_gear_helmet_italy;
	gear_3_color=c_white;
	gear_3_alpha=1;

	////greek police
	//color=c_white;
	//skin=spr_dummy_skin;
	//skin_color=make_colour_hsv(random_range(10,20),90,random_range(50,100));
	//head=choose(spr_head_p_beard,spr_head_p_beard2,spr_head_p_kid,spr_head_p_old,spr_head_p_pizzetto,spr_head_p_stash,spr_head_p_thinbeard);
	//head_color=make_color_hsv(random_range(5,25),random_range(0,90),random_range(0,100));
	//body=spr_uniform_greece_shortsleeves;
	//body_color=c_white;
	//body_alpha=1;
	//vest=choose(spr_gear_bag_left,spr_gear_bag_right,spr_gear_elbows,spr_gear_kneepads);
	//vest_color=choose(c_black,c_white,c_gray,c_dkgray);
	//vest_alpha=choose(0,1,1,1);
	//legs=spr_dummy_pants;
	//legs_color=c_white;
	//legs_alpha=0;
	//gear_1=spr_gear_baton;
	//gear_1_color=c_white;
	//gear_1_alpha=1;
	//gear_2=spr_gear_shield;
	//gear_2_color=c_ltgray;
	//gear_2_alpha=1;
	//gear_3=spr_gear_helmet;
	//gear_3_color=c_white;
	//gear_3_alpha=1;

	scr_editor_costumes_police();
}
