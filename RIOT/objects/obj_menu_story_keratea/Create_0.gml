depth=global.depth_menu;
global.ai=true;

instance_create(x,y,obj_menu_transition);

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
b_back=instance_create(x,y,obj_menu_button);

ini_open("save.ini")
///UNLOCKED LEVELS///
//keratea1R
b_keratea1r.active=1;
b_keratea1r.sprite=spr_menu_story_keratea_1r;
b_keratea1r.target_faction=1;
b_keratea1r.target_night=1;
b_keratea1r.target_room=rm_cinematics_keratea_intro;
//keratea1P
b_keratea1p.active=1;
b_keratea1p.sprite=spr_menu_story_keratea_1p;
b_keratea1p.target_faction=0;
b_keratea1p.target_night=1;
b_keratea1p.target_room=rm_cinematics_keratea_intro;
//keratea2R
b_keratea2r.active=ini_read_real("MAPS","keratea1r",0);
b_keratea2r.sprite=spr_menu_story_keratea_2r;
b_keratea2r.target_faction=1;
b_keratea2r.target_night=1;
b_keratea2r.target_room=rm_cinematics_keratea2;
//keratea2P
b_keratea2p.active=ini_read_real("MAPS","keratea1p",0);
b_keratea2p.sprite=spr_menu_story_keratea_2p;
b_keratea2p.target_faction=0;
b_keratea2p.target_night=1;
b_keratea2p.target_room=rm_cinematics_keratea2;
//keratea3R
b_keratea3r.active=ini_read_real("MAPS","keratea2r",0);
b_keratea3r.sprite=spr_menu_story_keratea_3r;
b_keratea3r.target_faction=1;
b_keratea3r.target_night=1;
b_keratea3r.target_room=rm_cinematics_keratea3;
//keratea3P
b_keratea3p.active=ini_read_real("MAPS","keratea2p",0);
b_keratea3p.sprite=spr_menu_story_keratea_3p;
b_keratea3p.target_faction=0;
b_keratea3p.target_night=1;
b_keratea3p.target_room=rm_cinematics_keratea3;
//keratea4R
b_keratea4r.active=ini_read_real("MAPS","keratea3r",0);
b_keratea4r.sprite=spr_menu_story_keratea_4r;
b_keratea4r.target_faction=1;
b_keratea4r.target_night=1;
b_keratea4r.target_room=rm_cinematics_keratea4;
//keratea4P
b_keratea4p.active=ini_read_real("MAPS","keratea3p",0);
b_keratea4p.sprite=spr_menu_story_keratea_4p;
b_keratea4p.target_faction=0;
b_keratea4p.target_night=0;
b_keratea4p.target_room=rm_cinematics_keratea4;
//EXTRA1R
b_keratea_extra1r.active=ini_read_real("MAPS","keratea4r",0);
b_keratea_extra1r.sprite=spr_menu_story_taksim_r;
b_keratea_extra1r.target_faction=1;
b_keratea_extra1r.target_night=0;
b_keratea_extra1r.target_room=rm_taksim;
//EXTRA1P
b_keratea_extra1p.active=ini_read_real("MAPS","taksimr",0);
b_keratea_extra1p.sprite=spr_menu_story_taksim_p;
b_keratea_extra1p.target_faction=0;
b_keratea_extra1p.target_night=1;
b_keratea_extra1p.target_room=rm_taksim;
//EXTRA2R
b_keratea_extra2r.active=ini_read_real("MAPS","syntagmap",0);
b_keratea_extra2r.sprite=spr_menu_story_syntagma_r;
b_keratea_extra2r.target_faction=1;
b_keratea2r.target_night=0;
b_keratea_extra2r.target_room=rm_syntagma;
//EXTRA2P
b_keratea_extra2p.active=ini_read_real("MAPS","keratea4p",0);
b_keratea_extra2p.sprite=spr_menu_story_syntagma_p;
b_keratea_extra2p.target_faction=0;
b_keratea_extra2p.target_night=1;
b_keratea_extra2p.target_room=rm_syntagma;

///UNLOCKED ACHIEVEMENTS///
var xr1=81;
var xr2=92;
var xr3=103;
var xp1=238-20+2;
var xp2=227-20+2;
var xp3=216-20+2;
var ym1=33-3;//24;
var ym2=65-1;//61;
var ym3=98+1;//98;
var ym4=131+3;//135;

if ini_read_real("ACHIEVEMENTS","keratea1r_ach1",0)==1 {instance_create(x+xr1,y+ym1,obj_menu_star);}
if ini_read_real("ACHIEVEMENTS","keratea1r_ach2",0)==1 {instance_create(x+xr2,y+ym1,obj_menu_star);}
if ini_read_real("ACHIEVEMENTS","keratea1r_ach3",0)==1 {instance_create(x+xr3,y+ym1,obj_menu_star);}
if ini_read_real("ACHIEVEMENTS","keratea1p_ach1",0)==1 {instance_create(x+xp1,y+ym1,obj_menu_star);}
if ini_read_real("ACHIEVEMENTS","keratea1p_ach2",0)==1 {instance_create(x+xp2,y+ym1,obj_menu_star);}
if ini_read_real("ACHIEVEMENTS","keratea1p_ach3",0)==1 {instance_create(x+xp3,y+ym1,obj_menu_star);}
if ini_read_real("ACHIEVEMENTS","keratea2r_ach1",0)==1 {instance_create(x+xr1,y+ym2,obj_menu_star);}
if ini_read_real("ACHIEVEMENTS","keratea2r_ach2",0)==1 {instance_create(x+xr2,y+ym2,obj_menu_star);}
if ini_read_real("ACHIEVEMENTS","keratea2r_ach3",0)==1 {instance_create(x+xr3,y+ym2,obj_menu_star);}
if ini_read_real("ACHIEVEMENTS","keratea2p_ach1",0)==1 {instance_create(x+xp1,y+ym2,obj_menu_star);}
if ini_read_real("ACHIEVEMENTS","keratea2p_ach2",0)==1 {instance_create(x+xp2,y+ym2,obj_menu_star);}
if ini_read_real("ACHIEVEMENTS","keratea2p_ach3",0)==1 {instance_create(x+xp3,y+ym2,obj_menu_star);}
if ini_read_real("ACHIEVEMENTS","keratea3r_ach1",0)==1 {instance_create(x+xr1,y+ym3,obj_menu_star);}
if ini_read_real("ACHIEVEMENTS","keratea3r_ach2",0)==1 {instance_create(x+xr2,y+ym3,obj_menu_star);}
if ini_read_real("ACHIEVEMENTS","keratea3r_ach3",0)==1 {instance_create(x+xr3,y+ym3,obj_menu_star);}
if ini_read_real("ACHIEVEMENTS","keratea3p_ach1",0)==1 {instance_create(x+xp1,y+ym3,obj_menu_star);}
if ini_read_real("ACHIEVEMENTS","keratea3p_ach2",0)==1 {instance_create(x+xp2,y+ym3,obj_menu_star);}
if ini_read_real("ACHIEVEMENTS","keratea3p_ach3",0)==1 {instance_create(x+xp3,y+ym3,obj_menu_star);}
if ini_read_real("ACHIEVEMENTS","keratea4r_ach1",0)==1 {instance_create(x+xr1,y+ym4,obj_menu_star);}
if ini_read_real("ACHIEVEMENTS","keratea4r_ach2",0)==1 {instance_create(x+xr2,y+ym4,obj_menu_star);}
if ini_read_real("ACHIEVEMENTS","keratea4r_ach3",0)==1 {instance_create(x+xr3,y+ym4,obj_menu_star);}
if ini_read_real("ACHIEVEMENTS","keratea4p_ach1",0)==1 {instance_create(x+xp1,y+ym4,obj_menu_star);}
if ini_read_real("ACHIEVEMENTS","keratea4p_ach2",0)==1 {instance_create(x+xp2,y+ym4,obj_menu_star);}
if ini_read_real("ACHIEVEMENTS","keratea4p_ach3",0)==1 {instance_create(x+xp3,y+ym4,obj_menu_star);}


var y1=172-8;
var y2=181-8;
var y3=190-8;
var xre1=78;//82;
var xre2=155;//122;
var xpe1=166;//199;
var xpe2=238;//240;

if ini_read_real("ACHIEVEMENTS","taksimr_ach1",0)==1 {instance_create(x+xre1,y+y1,obj_menu_star_sml);}
if ini_read_real("ACHIEVEMENTS","taksimr_ach2",0)==1 {instance_create(x+xre1,y+y2,obj_menu_star_sml);}
if ini_read_real("ACHIEVEMENTS","taksimr_ach3",0)==1 {instance_create(x+xre1,y+y3,obj_menu_star_sml);}
if ini_read_real("ACHIEVEMENTS","taksimp_ach1",0)==1 {instance_create(x+xpe1,y+y1,obj_menu_star_sml);}
if ini_read_real("ACHIEVEMENTS","taksimp_ach2",0)==1 {instance_create(x+xpe1,y+y2,obj_menu_star_sml);}
if ini_read_real("ACHIEVEMENTS","taksimp_ach3",0)==1 {instance_create(x+xpe1,y+y3,obj_menu_star_sml);}
if ini_read_real("ACHIEVEMENTS","syntagmar_ach1",0)==1 {instance_create(x+xre2,y+y1,obj_menu_star_sml);}
if ini_read_real("ACHIEVEMENTS","syntagmar_ach2",0)==1 {instance_create(x+xre2,y+y2,obj_menu_star_sml);}
if ini_read_real("ACHIEVEMENTS","syntagmar_ach3",0)==1 {instance_create(x+xre2,y+y3,obj_menu_star_sml);}
if ini_read_real("ACHIEVEMENTS","syntagmap_ach1",0)==1 {instance_create(x+xpe2,y+y1,obj_menu_star_sml);}
if ini_read_real("ACHIEVEMENTS","syntagmap_ach2",0)==1 {instance_create(x+xpe2,y+y2,obj_menu_star_sml);}
if ini_read_real("ACHIEVEMENTS","syntagmap_ach3",0)==1 {instance_create(x+xpe2,y+y3,obj_menu_star_sml);}

ini_close();

//BACK
b_back.active=1;
b_back.sprite=spr_menu_story_keratea_back;
b_back.target_room=rm_story;
