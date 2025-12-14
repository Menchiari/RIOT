function scr_costumes_rebels() {
	anim_idle=choose(anim.idle,anim.idle_agitated,anim.idle_angry,anim.idle_handsinpocket,anim.idle_smoke);
	anim_walk=choose(anim.walk_forward,anim.walk_angry,anim.walk_boss);
	anim_walk_backwards=anim.walk_backwards;
	anim_run=choose(anim.run,anim.run_charge);
	anim_escape=choose(anim.run_escape,anim.run_panic);
	anim_attack=choose(anim.hands_up_idle);
	anim_hurt=choose(anim.idle_bumped_left,anim.idle_bumped_right,anim.defense_idle,anim.idle_radio,anim.hit_back,anim.hit_front,anim.hit_front_face,anim.hit_front_stomach,anim.hit_scared);

	switch(room)
	{
		case rm_indignados1:	scr_costumes_spain2r();		break;
		case rm_indignados2:	scr_costumes_spainr();		break;
		case rm_indignados3:	scr_costumes_spainr();		break;
		case rm_indignados4:	scr_costumes_spainr();		break;
		case rm_occupy:			scr_costumes_usar();		break;
		case rm_ukraine:		scr_costumes_ukrainer();	break;
		case rm_notav1:			scr_costumes_italyr();		break;
		case rm_notav2:			scr_costumes_italyr();		break;
		case rm_notav3:			scr_costumes_italyr();		break;
		case rm_notav4:			scr_costumes_italyr();		break;
		case rm_notav_extra1:	scr_costumes_italyr();		break;
		case rm_notav_extra2:	scr_costumes_spain2r();		break;
		case rm_keratea1:		scr_costumes_greecer();		break;
		case rm_keratea2:		scr_costumes_greecer();		break;
		case rm_keratea3:		scr_costumes_greecer();		break;
		case rm_keratea4:		scr_costumes_spain2r();		break;
		case rm_taksim:			scr_costumes_turkeyr();		break;
		case rm_syntagma:		scr_costumes_greecer();		break;
		case rm_tahrir1:		scr_costumes_egyptr();		break;
		case rm_tahrir2:		scr_costumes_egyptr();		break;
		case rm_tahrir3:		scr_costumes_egypt2r();		break;
		case rm_tahrir4:		scr_costumes_egypt2r();		break;
		case rm_tahrir5:		scr_costumes_egypt2r();		break;
		case rm_library:		scr_costumes_egypt2r();		break;
		case rm_korea:			scr_costumes_korear();		break;
	
		case rm_indignados_complete:
		var rebels_choice=irandom_range(0,3);
		switch(rebels_choice)
		{
			case 0:	scr_costumes_spainr(); break;
			case 1:	scr_costumes_spain2r(); break;
			case 2:	scr_costumes_usar(); break;
			case 3:	scr_costumes_ukrainer(); break;
		}
		break;
		case rm_notav_complete:
		var rebels_choice=irandom_range(0,1);
		switch(rebels_choice)
		{
			case 0:	scr_costumes_italyr(); break;
			case 1:	scr_costumes_spain2r(); break;
		}
		break;
		case rm_keratea_complete:
		var rebels_choice=irandom_range(0,2);
		switch(rebels_choice)
		{
			case 0:	scr_costumes_greecer(); break;
			case 1:	scr_costumes_spain2r(); break;
			case 2:	scr_costumes_turkeyr(); break;
		}
		break;
		case rm_tahrir_complete:
		var rebels_choice=irandom_range(0,2);
		switch(rebels_choice)
		{
			case 0:	scr_costumes_egyptr(); break;
			case 1:	scr_costumes_egypt2r(); break;
			case 2:	scr_costumes_korear(); break;
		}
		break;
		case rm_random:
		var rebels_choice=irandom_range(0,9);
		switch(rebels_choice)
		{
			case 0:	scr_costumes_spainr(); break;
			case 1:	scr_costumes_spain2r(); break;
			case 2:	scr_costumes_usar(); break;
			case 3:	scr_costumes_ukrainer(); break;
			case 4:	scr_costumes_italyr(); break;
			case 5:	scr_costumes_greecer(); break;
			case 6:	scr_costumes_turkeyr(); break;
			case 7:	scr_costumes_egyptr(); break;
			case 8:	scr_costumes_egypt2r(); break;
			case 9:	scr_costumes_korear(); break;
		}
		rebels_choice=random_range(0,100);
		if rebels_choice<5
		{
			scr_costumes_police();
		}
		break;
	
		default:				scr_costumes_defaultr();	break;
	}

}
