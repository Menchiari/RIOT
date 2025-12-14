depth=global.depth_menu;
global.ai=false;

instance_create(x,y,obj_menu_transition);

b_complete=instance_create(x,y,obj_menu_button);

b_indignados1r=instance_create(x,y,obj_menu_button);
b_indignados1p=instance_create(x,y,obj_menu_button);
b_indignados2r=instance_create(x,y,obj_menu_button);
b_indignados2p=instance_create(x,y,obj_menu_button);
b_indignados3r=instance_create(x,y,obj_menu_button);
b_indignados3p=instance_create(x,y,obj_menu_button);
b_indignados4r=instance_create(x,y,obj_menu_button);
b_indignados4p=instance_create(x,y,obj_menu_button);
b_indignados_extra1r=instance_create(x,y,obj_menu_button);
b_indignados_extra1p=instance_create(x,y,obj_menu_button);
b_indignados_extra2r=instance_create(x,y,obj_menu_button);
b_indignados_extra2p=instance_create(x,y,obj_menu_button);

b_notav1r=instance_create(x,y,obj_menu_button);
b_notav1p=instance_create(x,y,obj_menu_button);
b_notav2r=instance_create(x,y,obj_menu_button);
b_notav2p=instance_create(x,y,obj_menu_button);
b_notav3r=instance_create(x,y,obj_menu_button);
b_notav3p=instance_create(x,y,obj_menu_button);
b_notav4r=instance_create(x,y,obj_menu_button);
b_notav4p=instance_create(x,y,obj_menu_button);
b_notav_extra1r=instance_create(x,y,obj_menu_button);
b_notav_extra1p=instance_create(x,y,obj_menu_button);
b_notav_extra2r=instance_create(x,y,obj_menu_button);
b_notav_extra2p=instance_create(x,y,obj_menu_button);

b_keratea1r=instance_create(x,y,obj_menu_button);
b_keratea1p=instance_create(x,y,obj_menu_button);
b_keratea2r=instance_create(x,y,obj_menu_button);
b_keratea2p=instance_create(x,y,obj_menu_button);
b_keratea3r=instance_create(x,y,obj_menu_button);
b_keratea3p=instance_create(x,y,obj_menu_button);
b_keratea4r=instance_create(x,y,obj_menu_button);
b_keratea4p=instance_create(x,y,obj_menu_button);
b_keratea_extra1r=instance_create(x,y,obj_menu_button);
b_keratea_extra1p=instance_create(x,y,obj_menu_button);
b_keratea_extra2r=instance_create(x,y,obj_menu_button);
b_keratea_extra2p=instance_create(x,y,obj_menu_button);

b_tahrir1r=instance_create(x,y,obj_menu_button);
b_tahrir1p=instance_create(x,y,obj_menu_button);
b_tahrir2r=instance_create(x,y,obj_menu_button);
b_tahrir2p=instance_create(x,y,obj_menu_button);
b_tahrir3r=instance_create(x,y,obj_menu_button);
b_tahrir3p=instance_create(x,y,obj_menu_button);
b_tahrir4r=instance_create(x,y,obj_menu_button);
b_tahrir4p=instance_create(x,y,obj_menu_button);
b_tahrir5r=instance_create(x,y,obj_menu_button);
b_tahrir5p=instance_create(x,y,obj_menu_button);
b_tahrir_extra1r=instance_create(x,y,obj_menu_button);
b_tahrir_extra1p=instance_create(x,y,obj_menu_button);
b_tahrir_extra2r=instance_create(x,y,obj_menu_button);
b_tahrir_extra2p=instance_create(x,y,obj_menu_button);

b_indignados_complete=instance_create(x,y,obj_menu_button);
b_notav_complete=instance_create(x,y,obj_menu_button);
b_keratea_complete=instance_create(x,y,obj_menu_button);
b_tahrir_complete=instance_create(x,y,obj_menu_button);

b_back=instance_create(x,y,obj_menu_button);

ini_open("save.ini");
//indignados1Dr
b_indignados1r.active=1//ini_read_real("MAPS","indignados1r",1);
b_indignados1r.sprite=spr_menu_versus_indignados_1r;
b_indignados1r.target_night=0;
b_indignados1r.target_room=rm_indignados1;
//indignados1Np
b_indignados1p.active=1//ini_read_real("MAPS","indignados1p",1);
b_indignados1p.sprite=spr_menu_versus_indignados_1p;
b_indignados1p.target_night=1;
b_indignados1p.target_room=rm_indignados1;
//indignados2Dr
b_indignados2r.active=ini_read_real("MAPS","indignados2r",0);
b_indignados2r.sprite=spr_menu_versus_indignados_2r;
b_indignados2r.target_night=0;
b_indignados2r.target_room=rm_indignados2;
//indignados2Np
b_indignados2p.active=ini_read_real("MAPS","indignados2p",0);
b_indignados2p.sprite=spr_menu_versus_indignados_2p;
b_indignados2p.target_night=1;
b_indignados2p.target_room=rm_indignados2;
//indignados3Dr
b_indignados3r.active=ini_read_real("MAPS","indignados3r",0);
b_indignados3r.sprite=spr_menu_versus_indignados_3r;
b_indignados3r.target_night=0;
b_indignados3r.target_room=rm_indignados3;
//indignados3Np
b_indignados3p.active=ini_read_real("MAPS","indignados3p",0);
b_indignados3p.sprite=spr_menu_versus_indignados_3p;
b_indignados3p.target_night=1;
b_indignados3p.target_room=rm_indignados3;
//indignados4Dr
b_indignados4r.active=ini_read_real("MAPS","indignados4r",0);
b_indignados4r.sprite=spr_menu_versus_indignados_4r;
b_indignados4r.target_night=0;
b_indignados4r.target_room=rm_indignados4;
//indignados4Np
b_indignados4p.active=ini_read_real("MAPS","indignados4p",0);
b_indignados4p.sprite=spr_menu_versus_indignados_4p;
b_indignados4p.target_night=1;
b_indignados4p.target_room=rm_indignados4;
//occupyr
b_indignados_extra1r.active=ini_read_real("MAPS","occupyr",0);
b_indignados_extra1r.sprite=spr_menu_versus_occupy_r;
b_indignados_extra1r.target_night=0
b_indignados_extra1r.target_room=rm_occupy;
//occupyp
b_indignados_extra1p.active=ini_read_real("MAPS","occupyp",0);
b_indignados_extra1p.sprite=spr_menu_versus_occupy_p;
b_indignados_extra1p.target_night=1
b_indignados_extra1p.target_room=rm_occupy;
//ukrainer
b_indignados_extra2r.active=ini_read_real("MAPS","ukrainer",0);
b_indignados_extra2r.sprite=spr_menu_versus_ukraine_r;
b_indignados_extra2r.target_night=0
b_indignados_extra2r.target_room=rm_ukraine;
//ukrainep
b_indignados_extra2p.active=ini_read_real("MAPS","ukrainep",0);
b_indignados_extra2p.sprite=spr_menu_versus_ukraine_p;
b_indignados_extra2p.target_night=1
b_indignados_extra2p.target_room=rm_ukraine;

//NOTAV1Dr
b_notav1r.active=1//ini_read_real("MAPS","notav1r",1);
b_notav1r.sprite=spr_menu_versus_notav_1r;
b_notav1r.target_night=0;
b_notav1r.target_room=rm_notav1;
//NOTAV1Np
b_notav1p.active=1//ini_read_real("MAPS","notav1p",1);
b_notav1p.sprite=spr_menu_versus_notav_1p;
b_notav1p.target_night=1;
b_notav1p.target_room=rm_notav1;
//NOTAV2Dr
b_notav2r.active=ini_read_real("MAPS","notav2r",0);
b_notav2r.sprite=spr_menu_versus_notav_2r;
b_notav2r.target_night=0;
b_notav2r.target_room=rm_notav2;
//NOTAV2Np
b_notav2p.active=ini_read_real("MAPS","notav2p",0);
b_notav2p.sprite=spr_menu_versus_notav_2p;
b_notav2p.target_night=1;
b_notav2p.target_room=rm_notav2;
//NOTAV3Dr
b_notav3r.active=ini_read_real("MAPS","notav3r",0);
b_notav3r.sprite=spr_menu_versus_notav_3r;
b_notav3r.target_night=0;
b_notav3r.target_room=rm_notav3;
//NOTAV3Np
b_notav3p.active=ini_read_real("MAPS","notav3p",0);
b_notav3p.sprite=spr_menu_versus_notav_3p;
b_notav3p.target_night=1;
b_notav3p.target_room=rm_notav3;
//NOTAV4Dr
b_notav4r.active=ini_read_real("MAPS","notav4r",0);
b_notav4r.sprite=spr_menu_versus_notav_4r;
b_notav4r.target_night=0;
b_notav4r.target_room=rm_notav4;
//NOTAV4Np
b_notav4p.active=ini_read_real("MAPS","notav4p",0);
b_notav4p.sprite=spr_menu_versus_notav_4p;
b_notav4p.target_night=1;
b_notav4p.target_room=rm_notav4;
//EXTRA1Dr
b_notav_extra1r.active=ini_read_real("MAPS","extra1r",0);
b_notav_extra1r.sprite=spr_menu_versus_nomuos_r;
b_notav_extra1r.target_night=0
b_notav_extra1r.target_room=rm_notav_extra1;
//EXTRA1Np
b_notav_extra1p.active=ini_read_real("MAPS","extra1p",0);
b_notav_extra1p.sprite=spr_menu_versus_nomuos_p;
b_notav_extra1p.target_night=1
b_notav_extra1p.target_room=rm_notav_extra1;
//EXTRA2Dr
b_notav_extra2r.active=ini_read_real("MAPS","extra2r",0);
b_notav_extra2r.sprite=spr_menu_versus_rome_r;
b_notav_extra2r.target_night=0
b_notav_extra2r.target_room=rm_notav_extra2;
//EXTRA2Np
b_notav_extra2p.active=ini_read_real("MAPS","extra2p",0);
b_notav_extra2p.sprite=spr_menu_versus_rome_p;
b_notav_extra2p.target_night=1
b_notav_extra2p.target_room=rm_notav_extra2;

//keratea1Dr
b_keratea1r.active=1//ini_read_real("MAPS","keratea1r",1);
b_keratea1r.sprite=spr_menu_versus_keratea_1r;
b_keratea1r.target_night=0;
b_keratea1r.target_room=rm_keratea1;
//keratea1Np
b_keratea1p.active=1//ini_read_real("MAPS","keratea1p",1);
b_keratea1p.sprite=spr_menu_versus_keratea_1p;
b_keratea1p.target_night=1;
b_keratea1p.target_room=rm_keratea1;
//keratea2Dr
b_keratea2r.active=ini_read_real("MAPS","keratea2r",0);
b_keratea2r.sprite=spr_menu_versus_keratea_2r;
b_keratea2r.target_night=0;
b_keratea2r.target_room=rm_keratea2;
//keratea2Np
b_keratea2p.active=ini_read_real("MAPS","keratea2p",0);
b_keratea2p.sprite=spr_menu_versus_keratea_2p;
b_keratea2p.target_night=1;
b_keratea2p.target_room=rm_keratea2;
//keratea3Dr
b_keratea3r.active=ini_read_real("MAPS","keratea3r",0);
b_keratea3r.sprite=spr_menu_versus_keratea_3r;
b_keratea3r.target_night=0;
b_keratea3r.target_room=rm_keratea3;
//keratea3Np
b_keratea3p.active=ini_read_real("MAPS","keratea3p",0);
b_keratea3p.sprite=spr_menu_versus_keratea_3p;
b_keratea3p.target_night=1;
b_keratea3p.target_room=rm_keratea3;
//keratea4Dr
b_keratea4r.active=ini_read_real("MAPS","keratea4r",0);
b_keratea4r.sprite=spr_menu_versus_keratea_4r;
b_keratea4r.target_night=0;
b_keratea4r.target_room=rm_keratea4;
//keratea4Np
b_keratea4p.active=ini_read_real("MAPS","keratea4p",0);
b_keratea4p.sprite=spr_menu_versus_keratea_4p;
b_keratea4p.target_night=1;
b_keratea4p.target_room=rm_keratea4;
//taksimr
b_keratea_extra1r.active=ini_read_real("MAPS","taksimr",0);
b_keratea_extra1r.sprite=spr_menu_versus_taksim_r;
b_keratea_extra1r.target_night=0
b_keratea_extra1r.target_room=rm_taksim;
//taksimp
b_keratea_extra1p.active=ini_read_real("MAPS","taksimp",0);
b_keratea_extra1p.sprite=spr_menu_versus_taksim_p;
b_keratea_extra1p.target_night=1
b_keratea_extra1p.target_room=rm_taksim;
//syntagmar
b_keratea_extra2r.active=ini_read_real("MAPS","syntagmar",0);
b_keratea_extra2r.sprite=spr_menu_versus_syntagma_r;
b_keratea_extra2r.target_night=0
b_keratea_extra2r.target_room=rm_syntagma;
//syntagmap
b_keratea_extra2p.active=ini_read_real("MAPS","syntagmap",0);
b_keratea_extra2p.sprite=spr_menu_versus_syntagma_p;
b_keratea_extra2p.target_night=1
b_keratea_extra2p.target_room=rm_syntagma;

//tahrir1Dr
b_tahrir1r.active=1//ini_read_real("MAPS","tahrir1r",1);
b_tahrir1r.sprite=spr_menu_versus_tahrir_1r;
b_tahrir1r.target_night=0;
b_tahrir1r.target_room=rm_tahrir1;
//tahrir1Np
b_tahrir1p.active=1//ini_read_real("MAPS","tahrir1p",1);
b_tahrir1p.sprite=spr_menu_versus_tahrir_1p;
b_tahrir1p.target_night=1;
b_tahrir1p.target_room=rm_tahrir1;
//tahrir2Dr
b_tahrir2r.active=ini_read_real("MAPS","tahrir2r",0);
b_tahrir2r.sprite=spr_menu_versus_tahrir_2r;
b_tahrir2r.target_night=0;
b_tahrir2r.target_room=rm_tahrir2;
//tahrir2Np
b_tahrir2p.active=ini_read_real("MAPS","tahrir2p",0);
b_tahrir2p.sprite=spr_menu_versus_tahrir_2p;
b_tahrir2p.target_night=1;
b_tahrir2p.target_room=rm_tahrir2;
//tahrir3Dr
b_tahrir3r.active=ini_read_real("MAPS","tahrir3r",0);
b_tahrir3r.sprite=spr_menu_versus_tahrir_3r;
b_tahrir3r.target_night=0;
b_tahrir3r.target_room=rm_tahrir3;
//tahrir3Np
b_tahrir3p.active=ini_read_real("MAPS","tahrir3p",0);
b_tahrir3p.sprite=spr_menu_versus_tahrir_3p;
b_tahrir3p.target_night=1;
b_tahrir3p.target_room=rm_tahrir3;
//tahrir4Dr
b_tahrir4r.active=ini_read_real("MAPS","tahrir4r",0);
b_tahrir4r.sprite=spr_menu_versus_tahrir_4r;
b_tahrir4r.target_night=0;
b_tahrir4r.target_room=rm_tahrir4;
//tahrir4Np
b_tahrir4p.active=ini_read_real("MAPS","tahrir4p",0);
b_tahrir4p.sprite=spr_menu_versus_tahrir_4p;
b_tahrir4p.target_night=1;
b_tahrir4p.target_room=rm_tahrir4;
//tahrir5Dr
b_tahrir5r.active=ini_read_real("MAPS","tahrir5r",0);
b_tahrir5r.sprite=spr_menu_versus_tahrir_5r;
b_tahrir5r.target_night=0;
b_tahrir5r.target_room=rm_tahrir5;
//tahrir5Np
b_tahrir5p.active=ini_read_real("MAPS","tahrir5p",0);
b_tahrir5p.sprite=spr_menu_versus_tahrir_5p;
b_tahrir5p.target_night=1;
b_tahrir5p.target_room=rm_tahrir5;
//libraryr
b_tahrir_extra1r.active=ini_read_real("MAPS","libraryr",0);
b_tahrir_extra1r.sprite=spr_menu_versus_library_r;
b_tahrir_extra1r.target_night=0
b_tahrir_extra1r.target_room=rm_library;
//libraryp
b_tahrir_extra1p.active=ini_read_real("MAPS","libraryp",0);
b_tahrir_extra1p.sprite=spr_menu_versus_library_p;
b_tahrir_extra1p.target_night=1
b_tahrir_extra1p.target_room=rm_library;
//korear
b_tahrir_extra2r.active=ini_read_real("MAPS","korear",0);
b_tahrir_extra2r.sprite=spr_menu_versus_korea_r;
b_tahrir_extra2r.target_night=0
b_tahrir_extra2r.target_room=rm_korea;
//koreap
b_tahrir_extra2p.active=ini_read_real("MAPS","koreap",0);
b_tahrir_extra2p.sprite=spr_menu_versus_korea_p;
b_tahrir_extra2p.target_night=1
b_tahrir_extra2p.target_room=rm_korea;


//indignados_complete
if ini_read_real("MAPS","indignados1r",0)==1
&& ini_read_real("MAPS","indignados1p",0)==1
&& ini_read_real("MAPS","indignados2r",0)==1
&& ini_read_real("MAPS","indignados2p",0)==1
&& ini_read_real("MAPS","indignados3r",0)==1
&& ini_read_real("MAPS","indignados3p",0)==1
&& ini_read_real("MAPS","indignados4r",0)==1
&& ini_read_real("MAPS","indignados4p",0)==1
&& ini_read_real("MAPS","occupyr",0)==1
&& ini_read_real("MAPS","occupyp",0)==1
&& ini_read_real("MAPS","ukrainer",0)==1
&& ini_read_real("MAPS","ukrainep",0)==1
{
	b_indignados_complete.active=1;
	b_indignados_complete.sprite=spr_menu_versus_indignados_complete;
	b_indignados_complete.target_night=choose(0,1)
	b_indignados_complete.target_room=rm_indignados_complete;
}
//notav_complete
if ini_read_real("MAPS","notav1r",0)==1
&& ini_read_real("MAPS","notav1p",0)==1
&& ini_read_real("MAPS","notav2r",0)==1
&& ini_read_real("MAPS","notav2p",0)==1
&& ini_read_real("MAPS","notav3r",0)==1
&& ini_read_real("MAPS","notav3p",0)==1
&& ini_read_real("MAPS","notav4r",0)==1
&& ini_read_real("MAPS","notav4p",0)==1
&& ini_read_real("MAPS","extra1r",0)==1
&& ini_read_real("MAPS","extra1p",0)==1
&& ini_read_real("MAPS","extra2r",0)==1
&& ini_read_real("MAPS","extra2p",0)==1
{
	b_notav_complete.active=1;
	b_notav_complete.sprite=spr_menu_versus_notav_complete;
	b_notav_complete.target_night=choose(0,1)
	b_notav_complete.target_room=rm_notav_complete;
}
//keratea_complete
if ini_read_real("MAPS","keratea1r",0)==1
&& ini_read_real("MAPS","keratea1p",0)==1
&& ini_read_real("MAPS","keratea2r",0)==1
&& ini_read_real("MAPS","keratea2p",0)==1
&& ini_read_real("MAPS","keratea3r",0)==1
&& ini_read_real("MAPS","keratea3p",0)==1
&& ini_read_real("MAPS","keratea4r",0)==1
&& ini_read_real("MAPS","keratea4p",0)==1
&& ini_read_real("MAPS","taksimr",0)==1
&& ini_read_real("MAPS","taksimp",0)==1
&& ini_read_real("MAPS","syntagmar",0)==1
&& ini_read_real("MAPS","syntagmap",0)==1
{
	b_keratea_complete.active=1;
	b_keratea_complete.sprite=spr_menu_versus_keratea_complete;
	b_keratea_complete.target_night=choose(0,1)
	b_keratea_complete.target_room=rm_keratea_complete;
}
//tahrir_complete
if ini_read_real("MAPS","tahrir1r",0)==1
&& ini_read_real("MAPS","tahrir1p",0)==1
&& ini_read_real("MAPS","tahrir2r",0)==1
&& ini_read_real("MAPS","tahrir2p",0)==1
&& ini_read_real("MAPS","tahrir3r",0)==1
&& ini_read_real("MAPS","tahrir3p",0)==1
&& ini_read_real("MAPS","tahrir4r",0)==1
&& ini_read_real("MAPS","tahrir4p",0)==1
&& ini_read_real("MAPS","tahrir5r",0)==1
&& ini_read_real("MAPS","tahrir5p",0)==1
&& ini_read_real("MAPS","libraryr",0)==1
&& ini_read_real("MAPS","libraryp",0)==1
&& ini_read_real("MAPS","korear",0)==1
&& ini_read_real("MAPS","koreap",0)==1
{
	b_tahrir_complete.active=1;
	b_tahrir_complete.sprite=spr_menu_versus_tahrir_complete;
	b_tahrir_complete.target_night=choose(0,1)
	b_tahrir_complete.target_room=rm_tahrir_complete;
}
//complete
if ini_read_real("MAPS","indignados1r",0)==1
&& ini_read_real("MAPS","indignados1p",0)==1
&& ini_read_real("MAPS","indignados2r",0)==1
&& ini_read_real("MAPS","indignados2p",0)==1
&& ini_read_real("MAPS","indignados3r",0)==1
&& ini_read_real("MAPS","indignados3p",0)==1
&& ini_read_real("MAPS","indignados4r",0)==1
&& ini_read_real("MAPS","indignados4p",0)==1
&& ini_read_real("MAPS","occupyr",0)==1
&& ini_read_real("MAPS","occupyp",0)==1
&& ini_read_real("MAPS","ukrainer",0)==1
&& ini_read_real("MAPS","ukrainep",0)==1
&& ini_read_real("MAPS","notav1r",0)==1
&& ini_read_real("MAPS","notav1p",0)==1
&& ini_read_real("MAPS","notav2r",0)==1
&& ini_read_real("MAPS","notav2p",0)==1
&& ini_read_real("MAPS","notav3r",0)==1
&& ini_read_real("MAPS","notav3p",0)==1
&& ini_read_real("MAPS","notav4r",0)==1
&& ini_read_real("MAPS","notav4p",0)==1
&& ini_read_real("MAPS","extra1r",0)==1
&& ini_read_real("MAPS","extra1p",0)==1
&& ini_read_real("MAPS","extra2r",0)==1
&& ini_read_real("MAPS","extra2p",0)==1
&& ini_read_real("MAPS","keratea1r",0)==1
&& ini_read_real("MAPS","keratea1p",0)==1
&& ini_read_real("MAPS","keratea2r",0)==1
&& ini_read_real("MAPS","keratea2p",0)==1
&& ini_read_real("MAPS","keratea3r",0)==1
&& ini_read_real("MAPS","keratea3p",0)==1
&& ini_read_real("MAPS","keratea4r",0)==1
&& ini_read_real("MAPS","keratea4p",0)==1
&& ini_read_real("MAPS","taksimr",0)==1
&& ini_read_real("MAPS","taksimp",0)==1
&& ini_read_real("MAPS","syntagmar",0)==1
&& ini_read_real("MAPS","syntagmap",0)==1
&& ini_read_real("MAPS","tahrir1r",0)==1
&& ini_read_real("MAPS","tahrir1p",0)==1
&& ini_read_real("MAPS","tahrir2r",0)==1
&& ini_read_real("MAPS","tahrir2p",0)==1
&& ini_read_real("MAPS","tahrir3r",0)==1
&& ini_read_real("MAPS","tahrir3p",0)==1
&& ini_read_real("MAPS","tahrir4r",0)==1
&& ini_read_real("MAPS","tahrir4p",0)==1
&& ini_read_real("MAPS","tahrir5r",0)==1
&& ini_read_real("MAPS","tahrir5p",0)==1
&& ini_read_real("MAPS","libraryr",0)==1
&& ini_read_real("MAPS","libraryp",0)==1
&& ini_read_real("MAPS","korear",0)==1
&& ini_read_real("MAPS","koreap",0)==1
{
	b_complete.active=1;
	b_complete.sprite=spr_menu_versus_complete;
	b_complete.target_night=choose(0,1);
	b_complete.target_room=rm_random;
}

ini_close();

//BACK
b_back.active=1;
b_back.sprite=spr_menu_versus_back;
b_back.target_room=rm_menu;
