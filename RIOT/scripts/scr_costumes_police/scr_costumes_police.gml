function scr_costumes_police() {
	anim_idle=choose(anim.idle,anim.idle_agitated,anim.idle_angry,anim.idle_handsinpocket,anim.idle_smoke);
	anim_walk=choose(anim.walk_forward,anim.walk_angry,anim.walk_boss);
	anim_walk_backwards=anim.walk_backwards;
	anim_run=choose(anim.run,anim.run_charge);
	anim_escape=choose(anim.run_escape,anim.run_panic);
	anim_attack=choose(anim.defense_idle,anim.hit_scared,anim.idle);
	anim_hurt=choose(anim.idle_bumped_left,anim.idle_bumped_right,anim.defense_idle,anim.idle_radio,anim.hit_back,anim.hit_front,anim.hit_front_face,anim.hit_front_stomach,anim.hit_scared);

	switch(room)
	{
		case rm_indignados1:	scr_costumes_spainp();		break;
		case rm_indignados2:	scr_costumes_spainp();		break;
		case rm_indignados3:	scr_costumes_spainp();		break;
		case rm_indignados4:	scr_costumes_spainp();		break;
		case rm_occupy:			scr_costumes_usap();		break;
		case rm_ukraine:		scr_costumes_ukrainep();	break;
		case rm_notav1:			scr_costumes_italyp();		break;
		case rm_notav2:			scr_costumes_italyp();		break;
		case rm_notav3:			scr_costumes_italyp();		break;
		case rm_notav4:			scr_costumes_italyp();		break;
		case rm_notav_extra1:	scr_costumes_italyp();		break;
		case rm_notav_extra2:	scr_costumes_italyp();		break;
		case rm_keratea1:		scr_costumes_greecep();		break;
		case rm_keratea2:		scr_costumes_greecep();		break;
		case rm_keratea3:		scr_costumes_greecep();		break;
		case rm_keratea4:		scr_costumes_greecep();		break;
		case rm_taksim:			scr_costumes_turkeyp();		break;
		case rm_syntagma:		scr_costumes_greecep();		break;
		case rm_tahrir1:		scr_costumes_egyptp();		break;
		case rm_tahrir2:		scr_costumes_egyptp();		break;
		case rm_tahrir3:		scr_costumes_egyptp();		break;
		case rm_tahrir4:		scr_costumes_egyptp();		break;
		case rm_tahrir5:		scr_costumes_egyptp();		break;
		case rm_library:		scr_costumes_egyptp();		break;
		case rm_korea:			scr_costumes_koreap();		break;
	
		case rm_indignados_complete:
		var police_choice=irandom_range(0,2);
		switch(police_choice)
		{
			case 0:	scr_costumes_spainp(); break;
			case 1:	scr_costumes_usap(); break;
			case 2:	scr_costumes_ukrainep(); break;
		}
		break;
		case rm_notav_complete:
		var police_choice=irandom_range(0,1);
		switch(police_choice)
		{
			case 0:	scr_costumes_italyp(); break;
			case 1:	scr_costumes_spainp(); break;
		}
		break;
		case rm_keratea_complete:
		var police_choice=irandom_range(0,1);
		switch(police_choice)
		{
			case 0:	scr_costumes_greecep(); break;
			case 1:	scr_costumes_turkeyp(); break;
		}
		break;
		case rm_tahrir_complete:
		var police_choice=irandom_range(0,1);
		switch(police_choice)
		{
			case 0:	scr_costumes_egyptp(); break;
			case 1:	scr_costumes_koreap(); break;
		}
		break;
		case rm_random:
		var police_choice=irandom_range(0,8);
		switch(police_choice)
		{
			case 0:	scr_costumes_spainp(); break;
			case 1:	scr_costumes_usap(); break;
			case 2:	scr_costumes_ukrainep(); break;
			case 3:	scr_costumes_italyp(); break;
			case 4:	scr_costumes_greecep(); break;
			case 5:	scr_costumes_turkeyp(); break;
			case 6:	scr_costumes_egyptp(); break;
			case 7:	scr_costumes_egyptp(); break;
			case 8:	scr_costumes_koreap(); break;
		}
		police_choice=random_range(0,100);
		if police_choice<5
		{
			scr_costumes_rebels();
		}
		break;
				
		default:				scr_costumes_defaultp();	break;
	}

}
