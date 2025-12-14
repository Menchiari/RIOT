function scr_menu_versus_randomlevel() {
	ini_open("save.ini");

	//for other levels, make the same thing for each world and choose the world first (between notav, keratea, indignados, tahrir)

	target_world=choose("notav","indignados","keratea","tahrir");

	switch(target_world)
	{
		case "notav":
		target_room=choose(rm_notav1,rm_notav2,rm_notav3,rm_notav4,rm_notav_extra1,rm_notav_extra2);
		var night=choose(0,1);

		var rebelmaps=0;
		if ini_read_real("MAPS","notav1r",0)==1 rebelmaps+=1;
		if ini_read_real("MAPS","notav2r",0)==1 rebelmaps+=1;
		if ini_read_real("MAPS","notav3r",0)==1 rebelmaps+=1;
		if ini_read_real("MAPS","notav4r",0)==1 rebelmaps+=1;
		if ini_read_real("MAPS","extra1r",0)==1 rebelmaps+=1;
		if ini_read_real("MAPS","extra2r",0)==1 rebelmaps+=1;
		var policemaps=0;
		if ini_read_real("MAPS","notav1p",0)==1 policemaps+=1;
		if ini_read_real("MAPS","notav2p",0)==1 policemaps+=1;
		if ini_read_real("MAPS","notav3p",0)==1 policemaps+=1;
		if ini_read_real("MAPS","notav4p",0)==1 policemaps+=1;
		if ini_read_real("MAPS","extra1p",0)==1 policemaps+=1;
		if ini_read_real("MAPS","extra2p",0)==1 policemaps+=1;

		if night==0
		{
			target_night=0
			if rebelmaps<=1 {target_room=rm_notav1};
			else if rebelmaps==2 {target_room=choose(rm_notav1,rm_notav2)};
			else if rebelmaps==3 {target_room=choose(rm_notav1,rm_notav2,rm_notav3)};
			else if rebelmaps==4 {target_room=choose(rm_notav1,rm_notav2,rm_notav3,rm_notav4)};
			else if rebelmaps==5 {target_room=choose(rm_notav1,rm_notav2,rm_notav3,rm_notav4,rm_notav_extra1)};
			else if rebelmaps>5 {target_room=choose(rm_notav1,rm_notav2,rm_notav3,rm_notav4,rm_notav_extra1,rm_notav_extra2)};
		}
		else
		{
			target_night=1
			if policemaps<=1 {target_room=rm_notav1};
			else if policemaps==2 {target_room=choose(rm_notav1,rm_notav2)};
			else if policemaps==3 {target_room=choose(rm_notav1,rm_notav2,rm_notav3)};
			else if policemaps==4 {target_room=choose(rm_notav1,rm_notav2,rm_notav3,rm_notav4)};
			else if policemaps==5 {target_room=choose(rm_notav1,rm_notav2,rm_notav3,rm_notav4,rm_notav_extra2)};
			else if policemaps>5 {target_room=choose(rm_notav1,rm_notav2,rm_notav3,rm_notav4,rm_notav_extra2,rm_notav_extra1)};
		}
		break;
	
		case "indignados":
		target_room=choose(rm_indignados1,rm_indignados2,rm_indignados3,rm_indignados4,rm_occupy,rm_ukraine);
		var night=choose(0,1);

		var rebelmaps=0;
		if ini_read_real("MAPS","indignados1r",0)==1 rebelmaps+=1;
		if ini_read_real("MAPS","indignados2r",0)==1 rebelmaps+=1;
		if ini_read_real("MAPS","indignados3r",0)==1 rebelmaps+=1;
		if ini_read_real("MAPS","indignados4r",0)==1 rebelmaps+=1;
		if ini_read_real("MAPS","occupyr",0)==1 rebelmaps+=1;
		if ini_read_real("MAPS","ukrainer",0)==1 rebelmaps+=1;
		var policemaps=0;
		if ini_read_real("MAPS","indignados1p",0)==1 policemaps+=1;
		if ini_read_real("MAPS","indignados2p",0)==1 policemaps+=1;
		if ini_read_real("MAPS","indignados3p",0)==1 policemaps+=1;
		if ini_read_real("MAPS","indignados4p",0)==1 policemaps+=1;
		if ini_read_real("MAPS","ukrainep",0)==1 policemaps+=1;
		if ini_read_real("MAPS","occupyp",0)==1 policemaps+=1;

		if night==0
		{
			target_night=1;
			if rebelmaps<=1 {target_room=rm_indignados1};
			else if rebelmaps==2 {target_room=choose(rm_indignados1,rm_indignados2)};
			else if rebelmaps==3 {target_room=choose(rm_indignados1,rm_indignados2,rm_indignados3)};
			else if rebelmaps==4 {target_room=choose(rm_indignados1,rm_indignados2,rm_indignados3,rm_indignados4)};
			else if rebelmaps==5 {target_room=choose(rm_indignados1,rm_indignados2,rm_indignados3,rm_indignados4,rm_occupy)};
			else if rebelmaps>5 {target_room=choose(rm_indignados1,rm_indignados2,rm_indignados3,rm_indignados4,rm_occupy,rm_ukraine)};
		}
		else
		{
			target_night=0;
			if policemaps<=1 {target_room=rm_indignados1};
			else if policemaps==2 {target_room=choose(rm_indignados1,rm_indignados2)};
			else if policemaps==3 {target_room=choose(rm_indignados1,rm_indignados2,rm_indignados3)};
			else if policemaps==4 {target_room=choose(rm_indignados1,rm_indignados2,rm_indignados3,rm_indignados4)};
			else if policemaps==5 {target_room=choose(rm_indignados1,rm_indignados2,rm_indignados3,rm_indignados4,rm_ukraine)};
			else if policemaps>5 {target_room=choose(rm_indignados1,rm_indignados2,rm_indignados3,rm_indignados4,rm_ukraine,rm_occupy)};
		}
		break;
	
		case "keratea":
		target_room=choose(rm_keratea1,rm_keratea2,rm_keratea3,rm_keratea4,rm_taksim,rm_syntagma);
		var night=choose(0,1);

		var rebelmaps=0;
		if ini_read_real("MAPS","keratea1r",0)==1 rebelmaps+=1;
		if ini_read_real("MAPS","keratea2r",0)==1 rebelmaps+=1;
		if ini_read_real("MAPS","keratea3r",0)==1 rebelmaps+=1;
		if ini_read_real("MAPS","keratea4r",0)==1 rebelmaps+=1;
		if ini_read_real("MAPS","taksimr",0)==1 rebelmaps+=1;
		if ini_read_real("MAPS","syntagmar",0)==1 rebelmaps+=1;
		var policemaps=0;
		if ini_read_real("MAPS","keratea1p",0)==1 policemaps+=1;
		if ini_read_real("MAPS","keratea2p",0)==1 policemaps+=1;
		if ini_read_real("MAPS","keratea3p",0)==1 policemaps+=1;
		if ini_read_real("MAPS","keratea4p",0)==1 policemaps+=1;
		if ini_read_real("MAPS","syntagmap",0)==1 policemaps+=1;
		if ini_read_real("MAPS","taksimp",0)==1 policemaps+=1;

		if night==0
		{
			target_night=0;
			if rebelmaps<=1 {target_room=rm_keratea1};
			else if rebelmaps==2 {target_room=choose(rm_keratea1,rm_keratea2)};
			else if rebelmaps==3 {target_room=choose(rm_keratea1,rm_keratea2,rm_keratea3)};
			else if rebelmaps==4 {target_room=choose(rm_keratea1,rm_keratea2,rm_keratea3,rm_keratea4)};
			else if rebelmaps==5 {target_room=choose(rm_keratea1,rm_keratea2,rm_keratea3,rm_keratea4,rm_taksim)};
			else if rebelmaps>5 {target_room=choose(rm_keratea1,rm_keratea2,rm_keratea3,rm_keratea4,rm_taksim,rm_syntagma)};
		}
		else
		{
			target_night=1;
			if policemaps<=1 {target_room=rm_keratea1};
			else if policemaps==2 {target_room=choose(rm_keratea1,rm_keratea2)};
			else if policemaps==3 {target_room=choose(rm_keratea1,rm_keratea2,rm_keratea3)};
			else if policemaps==4 {target_room=choose(rm_keratea1,rm_keratea2,rm_keratea3,rm_keratea4)};
			else if policemaps==5 {target_room=choose(rm_keratea1,rm_keratea2,rm_keratea3,rm_keratea4,rm_syntagma)};
			else if policemaps>5 {target_room=choose(rm_keratea1,rm_keratea2,rm_keratea3,rm_keratea4,rm_syntagma,rm_taksim)};
		}
		break;
	
		case "tahrir":
		target_room=choose(rm_tahrir1,rm_tahrir2,rm_tahrir3,rm_tahrir4,rm_tahrir5,rm_library,rm_korea);
		var night=choose(0,1);

		var rebelmaps=0;
		if ini_read_real("MAPS","tahrir1r",0)==1 rebelmaps+=1;
		if ini_read_real("MAPS","tahrir2r",0)==1 rebelmaps+=1;
		if ini_read_real("MAPS","tahrir3r",0)==1 rebelmaps+=1;
		if ini_read_real("MAPS","tahrir4r",0)==1 rebelmaps+=1;
		if ini_read_real("MAPS","tahrir5r",0)==1 rebelmaps+=1;
		if ini_read_real("MAPS","libraryr",0)==1 rebelmaps+=1;
		if ini_read_real("MAPS","korear",0)==1 rebelmaps+=1;
		var policemaps=0;
		if ini_read_real("MAPS","tahrir1p",0)==1 policemaps+=1;
		if ini_read_real("MAPS","tahrir2p",0)==1 policemaps+=1;
		if ini_read_real("MAPS","tahrir3p",0)==1 policemaps+=1;
		if ini_read_real("MAPS","tahrir4p",0)==1 policemaps+=1;
		if ini_read_real("MAPS","tahrir5p",0)==1 policemaps+=1;
		if ini_read_real("MAPS","koreap",0)==1 policemaps+=1;
		if ini_read_real("MAPS","libraryp",0)==1 policemaps+=1;

		if night==0
		{
			target_night=0;
			if rebelmaps<=1 {target_room=rm_tahrir1};
			else if rebelmaps==2 {target_room=choose(rm_tahrir1,rm_tahrir2)};
			else if rebelmaps==3 {target_room=choose(rm_tahrir1,rm_tahrir2,rm_tahrir3)};
			else if rebelmaps==4 {target_room=choose(rm_tahrir1,rm_tahrir2,rm_tahrir3,rm_tahrir4)};
			else if rebelmaps==5 {target_room=choose(rm_tahrir1,rm_tahrir2,rm_tahrir3,rm_tahrir4,rm_tahrir5)};
			else if rebelmaps==6 {target_room=choose(rm_tahrir1,rm_tahrir2,rm_tahrir3,rm_tahrir4,rm_tahrir5,rm_library)};
			else if rebelmaps>6 {target_room=choose(rm_tahrir1,rm_tahrir2,rm_tahrir3,rm_tahrir4,rm_tahrir5,rm_library,rm_korea)};
		}
		else
		{
			target_night=1;
			if policemaps<=1 {target_room=rm_tahrir1};
			else if policemaps==2 {target_room=choose(rm_tahrir1,rm_tahrir2)};
			else if policemaps==3 {target_room=choose(rm_tahrir1,rm_tahrir2,rm_tahrir3)};
			else if policemaps==4 {target_room=choose(rm_tahrir1,rm_tahrir2,rm_tahrir3,rm_tahrir4)};
			else if policemaps==5 {target_room=choose(rm_tahrir1,rm_tahrir2,rm_tahrir3,rm_tahrir4,rm_tahrir5)};
			else if policemaps==6 {target_room=choose(rm_tahrir1,rm_tahrir2,rm_tahrir3,rm_tahrir4,rm_tahrir5,rm_korea)};
			else if policemaps>6 {target_room=choose(rm_tahrir1,rm_tahrir2,rm_tahrir3,rm_tahrir4,rm_tahrir5,rm_korea,rm_library)};
		}
		break;
	}
	ini_close();


}
