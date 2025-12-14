depth=global.depth_menu;
global.ai=true;

instance_create(x,y,obj_menu_transition);

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
b_back=instance_create(x,y,obj_menu_button);

ini_open("save.ini")
///UNLOCKED LEVELS///
//indignados1R
b_indignados1r.active=1;
b_indignados1r.sprite=spr_menu_story_indignados_1r;
b_indignados1r.target_faction=1;
b_indignados1r.target_night=0;
b_indignados1r.target_room=rm_cinematics_indignados1;
//indignados1P
b_indignados1p.active=1;
b_indignados1p.sprite=spr_menu_story_indignados_1p;
b_indignados1p.target_faction=0;
b_indignados1p.target_night=0;
b_indignados1p.target_room=rm_cinematics_indignados1;
//indignados2R
b_indignados2r.active=ini_read_real("MAPS","indignados1r",0);
b_indignados2r.sprite=spr_menu_story_indignados_2r;
b_indignados2r.target_faction=1;
if current_hour>5 && current_hour<20 {b_indignados2r.target_night=0;}
else {b_indignados2r.target_night=1;}
b_indignados2r.target_room=rm_cinematics_indignados_intro;
//indignados2P
b_indignados2p.active=ini_read_real("MAPS","indignados1p",0);
b_indignados2p.sprite=spr_menu_story_indignados_2p;
b_indignados2p.target_faction=0;
if current_hour>5 && current_hour<20 {b_indignados2r.target_night=0;}
else {b_indignados2r.target_night=1;}
b_indignados2p.target_room=rm_cinematics_indignados_intro;
//indignados3R
b_indignados3r.active=ini_read_real("MAPS","indignados2r",0);
b_indignados3r.sprite=spr_menu_story_indignados_3r;
b_indignados3r.target_faction=1;
b_indignados3r.target_night=1;
b_indignados3r.target_room=rm_cinematics_indignados3;
//indignados3P
b_indignados3p.active=ini_read_real("MAPS","indignados2p",0);
b_indignados3p.sprite=spr_menu_story_indignados_3p;
b_indignados3p.target_faction=0;
b_indignados3p.target_night=1;
b_indignados3p.target_room=rm_cinematics_indignados3;
//indignados4R
b_indignados4r.active=ini_read_real("MAPS","indignados3r",0);
b_indignados4r.sprite=spr_menu_story_indignados_4r;
b_indignados4r.target_faction=1;
b_indignados4r.target_night=1;
b_indignados4r.target_room=rm_cinematics_indignados4;
//indignados4P
b_indignados4p.active=ini_read_real("MAPS","indignados3p",0);
b_indignados4p.sprite=spr_menu_story_indignados_4p;
b_indignados4p.target_faction=0;
b_indignados4p.target_night=0;
b_indignados4p.target_room=rm_cinematics_indignados4;
//EXTRA1R
b_indignados_extra1r.active=ini_read_real("MAPS","indignados4r",0);
b_indignados_extra1r.sprite=spr_menu_story_oakland_r;
b_indignados_extra1r.target_faction=1;
b_indignados_extra1r.target_night=0;
b_indignados_extra1r.target_room=rm_occupy;
//EXTRA1P
b_indignados_extra1p.active=ini_read_real("MAPS","occupyr",0);
b_indignados_extra1p.sprite=spr_menu_story_oakland_p;
b_indignados_extra1p.target_faction=0;
b_indignados_extra1p.target_night=1;
b_indignados_extra1p.target_room=rm_occupy;
//EXTRA2R
b_indignados_extra2r.active=ini_read_real("MAPS","ukrainep",0);
b_indignados_extra2r.sprite=spr_menu_story_ukraine_r;
b_indignados_extra2r.target_faction=1;
b_indignados2r.target_night=0;
b_indignados_extra2r.target_room=rm_ukraine;
//EXTRA2P
b_indignados_extra2p.active=ini_read_real("MAPS","indignados4p",0);
b_indignados_extra2p.sprite=spr_menu_story_ukraine_p;
b_indignados_extra2p.target_faction=0;
b_indignados_extra2p.target_night=1;
b_indignados_extra2p.target_room=rm_ukraine;

///UNLOCKED ACHIEVEMENTS///
var xr1=81-20+2+4;
var xr2=92-20+2+4;
var xr3=103-20+2+4;
var xp1=238-20+4+25;
var xp2=227-20+4+25;
var xp3=216-20+4+25;
var ym1=33;//24;
var ym2=65;//61;
var ym3=98;//98;
var ym4=131;//135;

if ini_read_real("ACHIEVEMENTS","indignados1r_ach1",0)==1 {instance_create(x+xr1,y+ym1,obj_menu_star);}
if ini_read_real("ACHIEVEMENTS","indignados1r_ach2",0)==1 {instance_create(x+xr2,y+ym1,obj_menu_star);}
if ini_read_real("ACHIEVEMENTS","indignados1r_ach3",0)==1 {instance_create(x+xr3,y+ym1,obj_menu_star);}
if ini_read_real("ACHIEVEMENTS","indignados1p_ach1",0)==1 {instance_create(x+xp1,y+ym1,obj_menu_star);}
if ini_read_real("ACHIEVEMENTS","indignados1p_ach2",0)==1 {instance_create(x+xp2,y+ym1,obj_menu_star);}
if ini_read_real("ACHIEVEMENTS","indignados1p_ach3",0)==1 {instance_create(x+xp3,y+ym1,obj_menu_star);}
if ini_read_real("ACHIEVEMENTS","indignados2r_ach1",0)==1 {instance_create(x+xr1,y+ym2,obj_menu_star);}
if ini_read_real("ACHIEVEMENTS","indignados2r_ach2",0)==1 {instance_create(x+xr2,y+ym2,obj_menu_star);}
if ini_read_real("ACHIEVEMENTS","indignados2r_ach3",0)==1 {instance_create(x+xr3,y+ym2,obj_menu_star);}
if ini_read_real("ACHIEVEMENTS","indignados2p_ach1",0)==1 {instance_create(x+xp1,y+ym2,obj_menu_star);}
if ini_read_real("ACHIEVEMENTS","indignados2p_ach2",0)==1 {instance_create(x+xp2,y+ym2,obj_menu_star);}
if ini_read_real("ACHIEVEMENTS","indignados2p_ach3",0)==1 {instance_create(x+xp3,y+ym2,obj_menu_star);}
if ini_read_real("ACHIEVEMENTS","indignados3r_ach1",0)==1 {instance_create(x+xr1,y+ym3,obj_menu_star);}
if ini_read_real("ACHIEVEMENTS","indignados3r_ach2",0)==1 {instance_create(x+xr2,y+ym3,obj_menu_star);}
if ini_read_real("ACHIEVEMENTS","indignados3r_ach3",0)==1 {instance_create(x+xr3,y+ym3,obj_menu_star);}
if ini_read_real("ACHIEVEMENTS","indignados3p_ach1",0)==1 {instance_create(x+xp1,y+ym3,obj_menu_star);}
if ini_read_real("ACHIEVEMENTS","indignados3p_ach2",0)==1 {instance_create(x+xp2,y+ym3,obj_menu_star);}
if ini_read_real("ACHIEVEMENTS","indignados3p_ach3",0)==1 {instance_create(x+xp3,y+ym3,obj_menu_star);}
if ini_read_real("ACHIEVEMENTS","indignados4r_ach1",0)==1 {instance_create(x+xr1,y+ym4,obj_menu_star);}
if ini_read_real("ACHIEVEMENTS","indignados4r_ach2",0)==1 {instance_create(x+xr2,y+ym4,obj_menu_star);}
if ini_read_real("ACHIEVEMENTS","indignados4r_ach3",0)==1 {instance_create(x+xr3,y+ym4,obj_menu_star);}
if ini_read_real("ACHIEVEMENTS","indignados4p_ach1",0)==1 {instance_create(x+xp1,y+ym4,obj_menu_star);}
if ini_read_real("ACHIEVEMENTS","indignados4p_ach2",0)==1 {instance_create(x+xp2,y+ym4,obj_menu_star);}
if ini_read_real("ACHIEVEMENTS","indignados4p_ach3",0)==1 {instance_create(x+xp3,y+ym4,obj_menu_star);}


var y1=172-8;
var y2=181-8;
var y3=190-8;
var xre1=65;//82;
var xre2=165-23;//122;
var xpe1=171;//199;
var xpe2=250;//240;

if ini_read_real("ACHIEVEMENTS","occupyr_ach1",0)==1 {instance_create(x+xre1,y+y1,obj_menu_star_sml);}
if ini_read_real("ACHIEVEMENTS","occupyr_ach2",0)==1 {instance_create(x+xre1,y+y2,obj_menu_star_sml);}
if ini_read_real("ACHIEVEMENTS","occupyr_ach3",0)==1 {instance_create(x+xre1,y+y3,obj_menu_star_sml);}
if ini_read_real("ACHIEVEMENTS","occupyp_ach1",0)==1 {instance_create(x+xpe1,y+y1,obj_menu_star_sml);}
if ini_read_real("ACHIEVEMENTS","occupyp_ach2",0)==1 {instance_create(x+xpe1,y+y2,obj_menu_star_sml);}
if ini_read_real("ACHIEVEMENTS","occupyp_ach3",0)==1 {instance_create(x+xpe1,y+y3,obj_menu_star_sml);}
if ini_read_real("ACHIEVEMENTS","ukrainer_ach1",0)==1 {instance_create(x+xre2,y+y1,obj_menu_star_sml);}
if ini_read_real("ACHIEVEMENTS","ukrainer_ach2",0)==1 {instance_create(x+xre2,y+y2,obj_menu_star_sml);}
if ini_read_real("ACHIEVEMENTS","ukrainer_ach3",0)==1 {instance_create(x+xre2,y+y3,obj_menu_star_sml);}
if ini_read_real("ACHIEVEMENTS","ukrainep_ach1",0)==1 {instance_create(x+xpe2,y+y1,obj_menu_star_sml);}
if ini_read_real("ACHIEVEMENTS","ukrainep_ach2",0)==1 {instance_create(x+xpe2,y+y2,obj_menu_star_sml);}
if ini_read_real("ACHIEVEMENTS","ukrainep_ach3",0)==1 {instance_create(x+xpe2,y+y3,obj_menu_star_sml);}

ini_close();

//BACK
b_back.active=1;
b_back.sprite=spr_menu_story_indignados_back;
b_back.target_room=rm_story;
