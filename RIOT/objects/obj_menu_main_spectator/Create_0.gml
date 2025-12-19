depth=global.depth_menu_key;
color=c_white;
alpha=1;
image_speed=0;
spectator_mode=global.spectator;

global.spectator=false;

//complete
ini_open("save.ini");
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
{}
else {instance_destroy();}
ini_close();