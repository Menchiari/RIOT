depth=global.depth_menu;
global.ai=true;

instance_create(x,y,obj_menu_transition);

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
b_back=instance_create(x,y,obj_menu_button);

ini_open("save.ini")
///UNLOCKED LEVELS///
//tahrir1R
b_tahrir1r.active=1;
b_tahrir1r.sprite=spr_menu_story_tahrir_1r;
b_tahrir1r.target_faction=1;
b_tahrir1r.target_night=0;
b_tahrir1r.target_room=rm_cinematics_tahrir_intro;
//tahrir1P
b_tahrir1p.active=1;
b_tahrir1p.sprite=spr_menu_story_tahrir_1p;
b_tahrir1p.target_faction=0;
b_tahrir1p.target_night=0;
b_tahrir1p.target_room=rm_cinematics_tahrir_intro;
//tahrir2R
b_tahrir2r.active=ini_read_real("MAPS","tahrir1r",0);
b_tahrir2r.sprite=spr_menu_story_tahrir_2r;
b_tahrir2r.target_faction=1;
if current_hour>5 && current_hour<20 {b_tahrir2r.target_night=0;}
else {b_tahrir2r.target_night=1;}
b_tahrir2r.target_room=rm_cinematics_tahrir2;
//tahrir2P
b_tahrir2p.active=ini_read_real("MAPS","tahrir1p",0);
b_tahrir2p.sprite=spr_menu_story_tahrir_2p;
b_tahrir2p.target_faction=0;
if current_hour>5 && current_hour<20 {b_tahrir2r.target_night=0;}
else {b_tahrir2r.target_night=1;}
b_tahrir2p.target_room=rm_cinematics_tahrir2;
//tahrir3R
b_tahrir3r.active=ini_read_real("MAPS","tahrir2r",0);
b_tahrir3r.sprite=spr_menu_story_tahrir_3r;
b_tahrir3r.target_faction=1;
b_tahrir3r.target_night=1;
b_tahrir3r.target_room=rm_cinematics_tahrir3;
//tahrir3P
b_tahrir3p.active=ini_read_real("MAPS","tahrir2p",0);
b_tahrir3p.sprite=spr_menu_story_tahrir_3p;
b_tahrir3p.target_faction=0;
b_tahrir3p.target_night=1;
b_tahrir3p.target_room=rm_cinematics_tahrir3;
//tahrir4R
b_tahrir4r.active=ini_read_real("MAPS","tahrir3r",0);
b_tahrir4r.sprite=spr_menu_story_tahrir_4r;
b_tahrir4r.target_faction=1;
b_tahrir4r.target_night=1;
b_tahrir4r.target_room=rm_cinematics_tahrir4;
//tahrir4P
b_tahrir4p.active=ini_read_real("MAPS","tahrir3p",0);
b_tahrir4p.sprite=spr_menu_story_tahrir_4p;
b_tahrir4p.target_faction=0;
b_tahrir4p.target_night=0;
b_tahrir4p.target_room=rm_cinematics_tahrir4;
//tahrir5R
b_tahrir5r.active=ini_read_real("MAPS","tahrir4r",0);
b_tahrir5r.sprite=spr_menu_story_tahrir_5r;
b_tahrir5r.target_faction=1;
b_tahrir5r.target_night=1;
b_tahrir5r.target_room=rm_cinematics_tahrir5;
//tahrir5P
b_tahrir5p.active=ini_read_real("MAPS","tahrir4p",0);
b_tahrir5p.sprite=spr_menu_story_tahrir_5p;
b_tahrir5p.target_faction=0;
b_tahrir5p.target_night=0;
b_tahrir5p.target_room=rm_cinematics_tahrir5;
//EXTRA1R
b_tahrir_extra1r.active=ini_read_real("MAPS","tahrir5r",0);
b_tahrir_extra1r.sprite=spr_menu_story_library_r;
b_tahrir_extra1r.target_faction=1;
b_tahrir_extra1r.target_night=0;
b_tahrir_extra1r.target_room=rm_library;
//EXTRA1P
b_tahrir_extra1p.active=ini_read_real("MAPS","libraryr",0);
b_tahrir_extra1p.sprite=spr_menu_story_library_p;
b_tahrir_extra1p.target_faction=0;
if current_hour>5 && current_hour<20 
b_tahrir_extra1p.target_night=1;
b_tahrir_extra1p.target_room=rm_library;
//EXTRA2R
b_tahrir_extra2r.active=ini_read_real("MAPS","koreap",0);
b_tahrir_extra2r.sprite=spr_menu_story_korea_r;
b_tahrir_extra2r.target_faction=1;
b_tahrir2r.target_night=0;
b_tahrir_extra2r.target_room=rm_korea;
//EXTRA2P
b_tahrir_extra2p.active=ini_read_real("MAPS","tahrir5p",0);
b_tahrir_extra2p.sprite=spr_menu_story_korea_p;
b_tahrir_extra2p.target_faction=0;
if current_hour>5 && current_hour<20 
b_tahrir_extra2p.target_night=1;
b_tahrir_extra2p.target_room=rm_korea;

///UNLOCKED ACHIEVEMENTS///
var xr1=81+4;
var xr2=92+4;
var xr3=103+4;
var xp1=238+10;
var xp2=227+10;
var xp3=216+10;
var ym1=28;//24;
var ym2=58;//61;
var ym3=87;//98;
var ym4=115;//135;
var ym5=143;//135;

if ini_read_real("ACHIEVEMENTS","tahrir1r_ach1",0)==1 {instance_create(x+xr1,y+ym1,obj_menu_star);}
if ini_read_real("ACHIEVEMENTS","tahrir1r_ach2",0)==1 {instance_create(x+xr2,y+ym1,obj_menu_star);}
if ini_read_real("ACHIEVEMENTS","tahrir1r_ach3",0)==1 {instance_create(x+xr3,y+ym1,obj_menu_star);}
if ini_read_real("ACHIEVEMENTS","tahrir1p_ach1",0)==1 {instance_create(x+xp1,y+ym1,obj_menu_star);}
if ini_read_real("ACHIEVEMENTS","tahrir1p_ach2",0)==1 {instance_create(x+xp2,y+ym1,obj_menu_star);}
if ini_read_real("ACHIEVEMENTS","tahrir1p_ach3",0)==1 {instance_create(x+xp3,y+ym1,obj_menu_star);}
if ini_read_real("ACHIEVEMENTS","tahrir2r_ach1",0)==1 {instance_create(x+xr1,y+ym2,obj_menu_star);}
if ini_read_real("ACHIEVEMENTS","tahrir2r_ach2",0)==1 {instance_create(x+xr2,y+ym2,obj_menu_star);}
if ini_read_real("ACHIEVEMENTS","tahrir2r_ach3",0)==1 {instance_create(x+xr3,y+ym2,obj_menu_star);}
if ini_read_real("ACHIEVEMENTS","tahrir2p_ach1",0)==1 {instance_create(x+xp1,y+ym2,obj_menu_star);}
if ini_read_real("ACHIEVEMENTS","tahrir2p_ach2",0)==1 {instance_create(x+xp2,y+ym2,obj_menu_star);}
if ini_read_real("ACHIEVEMENTS","tahrir2p_ach3",0)==1 {instance_create(x+xp3,y+ym2,obj_menu_star);}
if ini_read_real("ACHIEVEMENTS","tahrir3r_ach1",0)==1 {instance_create(x+xr1,y+ym3,obj_menu_star);}
if ini_read_real("ACHIEVEMENTS","tahrir3r_ach2",0)==1 {instance_create(x+xr2,y+ym3,obj_menu_star);}
if ini_read_real("ACHIEVEMENTS","tahrir3r_ach3",0)==1 {instance_create(x+xr3,y+ym3,obj_menu_star);}
if ini_read_real("ACHIEVEMENTS","tahrir3p_ach1",0)==1 {instance_create(x+xp1,y+ym3,obj_menu_star);}
if ini_read_real("ACHIEVEMENTS","tahrir3p_ach2",0)==1 {instance_create(x+xp2,y+ym3,obj_menu_star);}
if ini_read_real("ACHIEVEMENTS","tahrir3p_ach3",0)==1 {instance_create(x+xp3,y+ym3,obj_menu_star);}
if ini_read_real("ACHIEVEMENTS","tahrir4r_ach1",0)==1 {instance_create(x+xr1,y+ym4,obj_menu_star);}
if ini_read_real("ACHIEVEMENTS","tahrir4r_ach2",0)==1 {instance_create(x+xr2,y+ym4,obj_menu_star);}
if ini_read_real("ACHIEVEMENTS","tahrir4r_ach3",0)==1 {instance_create(x+xr3,y+ym4,obj_menu_star);}
if ini_read_real("ACHIEVEMENTS","tahrir4p_ach1",0)==1 {instance_create(x+xp1,y+ym4,obj_menu_star);}
if ini_read_real("ACHIEVEMENTS","tahrir4p_ach2",0)==1 {instance_create(x+xp2,y+ym4,obj_menu_star);}
if ini_read_real("ACHIEVEMENTS","tahrir4p_ach3",0)==1 {instance_create(x+xp3,y+ym4,obj_menu_star);}
if ini_read_real("ACHIEVEMENTS","tahrir5r_ach1",0)==1 {instance_create(x+xr1,y+ym5,obj_menu_star);}
if ini_read_real("ACHIEVEMENTS","tahrir5r_ach2",0)==1 {instance_create(x+xr2,y+ym5,obj_menu_star);}
if ini_read_real("ACHIEVEMENTS","tahrir5r_ach3",0)==1 {instance_create(x+xr3,y+ym5,obj_menu_star);}
if ini_read_real("ACHIEVEMENTS","tahrir5p_ach1",0)==1 {instance_create(x+xp1,y+ym5,obj_menu_star);}
if ini_read_real("ACHIEVEMENTS","tahrir5p_ach2",0)==1 {instance_create(x+xp2,y+ym5,obj_menu_star);}
if ini_read_real("ACHIEVEMENTS","tahrir5p_ach3",0)==1 {instance_create(x+xp3,y+ym5,obj_menu_star);}


var y1=171;
var y2=180;
var y3=189;
var xre1=85;//82;
var xre2=161;//122;
var xpe1=178;//199;
var xpe2=248;//240;

if ini_read_real("ACHIEVEMENTS","libraryr_ach1",0)==1 {instance_create(x+xre1,y+y1,obj_menu_star_sml);}
if ini_read_real("ACHIEVEMENTS","libraryr_ach2",0)==1 {instance_create(x+xre1,y+y2,obj_menu_star_sml);}
if ini_read_real("ACHIEVEMENTS","libraryr_ach3",0)==1 {instance_create(x+xre1,y+y3,obj_menu_star_sml);}
if ini_read_real("ACHIEVEMENTS","libraryp_ach1",0)==1 {instance_create(x+xpe1,y+y1,obj_menu_star_sml);}
if ini_read_real("ACHIEVEMENTS","libraryp_ach2",0)==1 {instance_create(x+xpe1,y+y2,obj_menu_star_sml);}
if ini_read_real("ACHIEVEMENTS","libraryp_ach3",0)==1 {instance_create(x+xpe1,y+y3,obj_menu_star_sml);}
if ini_read_real("ACHIEVEMENTS","korear_ach1",0)==1 {instance_create(x+xre2,y+y1,obj_menu_star_sml);}
if ini_read_real("ACHIEVEMENTS","korear_ach2",0)==1 {instance_create(x+xre2,y+y2,obj_menu_star_sml);}
if ini_read_real("ACHIEVEMENTS","korear_ach3",0)==1 {instance_create(x+xre2,y+y3,obj_menu_star_sml);}
if ini_read_real("ACHIEVEMENTS","koreap_ach1",0)==1 {instance_create(x+xpe2,y+y1,obj_menu_star_sml);}
if ini_read_real("ACHIEVEMENTS","koreap_ach2",0)==1 {instance_create(x+xpe2,y+y2,obj_menu_star_sml);}
if ini_read_real("ACHIEVEMENTS","koreap_ach3",0)==1 {instance_create(x+xpe2,y+y3,obj_menu_star_sml);}

ini_close();

//BACK
b_back.active=1;
b_back.sprite=spr_menu_story_tahrir_back;
b_back.target_room=rm_story;
