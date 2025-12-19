depth=global.depth_menu;
global.ai=true;

instance_create(x,y,obj_menu_transition);

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
b_back=instance_create(x,y,obj_menu_button);

ini_open("save.ini")
///UNLOCKED LEVELS///
//NOTAV1R
b_notav1r.active=1;
b_notav1r.sprite=spr_menu_notav_story_1R;
b_notav1r.target_faction=1;
b_notav1r.target_night=0;
b_notav1r.target_room=rm_cinematics_notav_intro;
//NOTAV1P
b_notav1p.active=1;
b_notav1p.sprite=spr_menu_notav_story_1P;
b_notav1p.target_faction=0;
b_notav1p.target_night=0;
b_notav1p.target_room=rm_cinematics_notav_intro;
//NOTAV2R
b_notav2r.active=ini_read_real("MAPS","notav1r",0);
b_notav2r.sprite=spr_menu_notav_story_2R;
b_notav2r.target_faction=1;
if current_hour>5 && current_hour<20 {b_notav2r.target_night=0;}
else {b_notav2r.target_night=1;}
b_notav2r.target_room=rm_cinematics_notav2;
//NOTAV2P
b_notav2p.active=ini_read_real("MAPS","notav1p",0);
b_notav2p.sprite=spr_menu_notav_story_2P;
b_notav2p.target_faction=0;
if current_hour>5 && current_hour<20 {b_notav2r.target_night=0;}
else {b_notav2r.target_night=1;}
b_notav2p.target_room=rm_cinematics_notav2;
//NOTAV3R
b_notav3r.active=ini_read_real("MAPS","notav2r",0);
b_notav3r.sprite=spr_menu_notav_story_3R;
b_notav3r.target_faction=1;
b_notav3r.target_night=1;
b_notav3r.target_room=rm_cinematics_notav3;
//NOTAV3P
b_notav3p.active=ini_read_real("MAPS","notav2p",0);
b_notav3p.sprite=spr_menu_notav_story_3P;
b_notav3p.target_faction=0;
b_notav3p.target_night=1;
b_notav3p.target_room=rm_cinematics_notav3;
//NOTAV4R
b_notav4r.active=ini_read_real("MAPS","notav3r",0);
b_notav4r.sprite=spr_menu_notav_story_4R;
b_notav4r.target_faction=1;
b_notav4r.target_night=1;
b_notav4r.target_room=rm_cinematics_notav4;
//NOTAV4P
b_notav4p.active=ini_read_real("MAPS","notav3p",0);
b_notav4p.sprite=spr_menu_notav_story_4P;
b_notav4p.target_faction=0;
b_notav4p.target_night=0;
b_notav4p.target_room=rm_cinematics_notav4;
//EXTRA1R
b_notav_extra1r.active=ini_read_real("MAPS","notav4r",0);
b_notav_extra1r.sprite=spr_menu_notav_versus_nomuos;
b_notav_extra1r.target_faction=1;
b_notav_extra1r.target_night=0;
b_notav_extra1r.target_room=rm_notav_extra1;
//EXTRA1P
b_notav_extra1p.active=ini_read_real("MAPS","extra1r",0);
b_notav_extra1p.sprite=spr_menu_notav_versus_nomuos_n;
b_notav_extra1p.target_faction=0;
b_notav_extra1p.target_night=1;
b_notav_extra1p.target_room=rm_notav_extra1;
//EXTRA2R
b_notav_extra2r.active=ini_read_real("MAPS","extra2p",0);
b_notav_extra2r.sprite=spr_menu_notav_versus_rome;
b_notav_extra2r.target_faction=1;
b_notav_extra2r.target_night=0;
b_notav_extra2r.target_room=rm_notav_extra2;
//EXTRA2P
b_notav_extra2p.active=ini_read_real("MAPS","notav4p",0);
b_notav_extra2p.sprite=spr_menu_notav_versus_rome_n;
b_notav_extra2p.target_faction=0;
b_notav_extra2p.target_night=1;
b_notav_extra2p.target_room=rm_notav_extra2;

///UNLOCKED ACHIEVEMENTS///
var xr1=81;
var xr2=92;
var xr3=103;
var xp1=238;
var xp2=227;
var xp3=216;
var ym1=24;
var ym2=61;
var ym3=98;
var ym4=135;

if ini_read_real("ACHIEVEMENTS","notav1r_ach1",0)==1 {instance_create(x+xr1,y+ym1,obj_menu_star);}
if ini_read_real("ACHIEVEMENTS","notav1r_ach2",0)==1 {instance_create(x+xr2,y+ym1,obj_menu_star);}
if ini_read_real("ACHIEVEMENTS","notav1r_ach3",0)==1 {instance_create(x+xr3,y+ym1,obj_menu_star);}
if ini_read_real("ACHIEVEMENTS","notav1p_ach1",0)==1 {instance_create(x+xp1,y+ym1,obj_menu_star);}
if ini_read_real("ACHIEVEMENTS","notav1p_ach2",0)==1 {instance_create(x+xp2,y+ym1,obj_menu_star);}
if ini_read_real("ACHIEVEMENTS","notav1p_ach3",0)==1 {instance_create(x+xp3,y+ym1,obj_menu_star);}
if ini_read_real("ACHIEVEMENTS","notav2r_ach1",0)==1 {instance_create(x+xr1,y+ym2,obj_menu_star);}
if ini_read_real("ACHIEVEMENTS","notav2r_ach2",0)==1 {instance_create(x+xr2,y+ym2,obj_menu_star);}
if ini_read_real("ACHIEVEMENTS","notav2r_ach3",0)==1 {instance_create(x+xr3,y+ym2,obj_menu_star);}
if ini_read_real("ACHIEVEMENTS","notav2p_ach1",0)==1 {instance_create(x+xp1,y+ym2,obj_menu_star);}
if ini_read_real("ACHIEVEMENTS","notav2p_ach2",0)==1 {instance_create(x+xp2,y+ym2,obj_menu_star);}
if ini_read_real("ACHIEVEMENTS","notav2p_ach3",0)==1 {instance_create(x+xp3,y+ym2,obj_menu_star);}
if ini_read_real("ACHIEVEMENTS","notav3r_ach1",0)==1 {instance_create(x+xr1,y+ym3,obj_menu_star);}
if ini_read_real("ACHIEVEMENTS","notav3r_ach2",0)==1 {instance_create(x+xr2,y+ym3,obj_menu_star);}
if ini_read_real("ACHIEVEMENTS","notav3r_ach3",0)==1 {instance_create(x+xr3,y+ym3,obj_menu_star);}
if ini_read_real("ACHIEVEMENTS","notav3p_ach1",0)==1 {instance_create(x+xp1,y+ym3,obj_menu_star);}
if ini_read_real("ACHIEVEMENTS","notav3p_ach2",0)==1 {instance_create(x+xp2,y+ym3,obj_menu_star);}
if ini_read_real("ACHIEVEMENTS","notav3p_ach3",0)==1 {instance_create(x+xp3,y+ym3,obj_menu_star);}
if ini_read_real("ACHIEVEMENTS","notav4r_ach1",0)==1 {instance_create(x+xr1,y+ym4,obj_menu_star);}
if ini_read_real("ACHIEVEMENTS","notav4r_ach2",0)==1 {instance_create(x+xr2,y+ym4,obj_menu_star);}
if ini_read_real("ACHIEVEMENTS","notav4r_ach3",0)==1 {instance_create(x+xr3,y+ym4,obj_menu_star);}
if ini_read_real("ACHIEVEMENTS","notav4p_ach1",0)==1 {instance_create(x+xp1,y+ym4,obj_menu_star);}
if ini_read_real("ACHIEVEMENTS","notav4p_ach2",0)==1 {instance_create(x+xp2,y+ym4,obj_menu_star);}
if ini_read_real("ACHIEVEMENTS","notav4p_ach3",0)==1 {instance_create(x+xp3,y+ym4,obj_menu_star);}


var y1=172;
var y2=181;
var y3=190;
var xre1=82;
var xre2=122;
var xpe1=199;
var xpe2=240;

if ini_read_real("ACHIEVEMENTS","extra1r_ach1",0)==1 {instance_create(x+xre1,y+y1,obj_menu_star_sml);}
if ini_read_real("ACHIEVEMENTS","extra1r_ach2",0)==1 {instance_create(x+xre1,y+y2,obj_menu_star_sml);}
if ini_read_real("ACHIEVEMENTS","extra1r_ach3",0)==1 {instance_create(x+xre1,y+y3,obj_menu_star_sml);}
if ini_read_real("ACHIEVEMENTS","extra1p_ach1",0)==1 {instance_create(x+xpe1,y+y1,obj_menu_star_sml);}
if ini_read_real("ACHIEVEMENTS","extra1p_ach2",0)==1 {instance_create(x+xpe1,y+y2,obj_menu_star_sml);}
if ini_read_real("ACHIEVEMENTS","extra1p_ach3",0)==1 {instance_create(x+xpe1,y+y3,obj_menu_star_sml);}
if ini_read_real("ACHIEVEMENTS","extra2r_ach1",0)==1 {instance_create(x+xre2,y+y1,obj_menu_star_sml);}
if ini_read_real("ACHIEVEMENTS","extra2r_ach2",0)==1 {instance_create(x+xre2,y+y2,obj_menu_star_sml);}
if ini_read_real("ACHIEVEMENTS","extra2r_ach3",0)==1 {instance_create(x+xre2,y+y3,obj_menu_star_sml);}
if ini_read_real("ACHIEVEMENTS","extra2p_ach1",0)==1 {instance_create(x+xpe2,y+y1,obj_menu_star_sml);}
if ini_read_real("ACHIEVEMENTS","extra2p_ach2",0)==1 {instance_create(x+xpe2,y+y2,obj_menu_star_sml);}
if ini_read_real("ACHIEVEMENTS","extra2p_ach3",0)==1 {instance_create(x+xpe2,y+y3,obj_menu_star_sml);}

ini_close();

//BACK
b_back.active=1;
b_back.sprite=spr_menu_notav_story_back;
b_back.target_room=rm_story;
