depth=global.depth_menu;
global.ai=true;

instance_create(x,y,obj_menu_transition);

b_indignados=instance_create(x,y,obj_menu_button);
b_notav=instance_create(x,y,obj_menu_button);
b_tahrir=instance_create(x,y,obj_menu_button);
b_keratea=instance_create(x,y,obj_menu_button);
b_back=instance_create(x,y,obj_menu_button);

ini_open("save.ini")

///LEVELS///
//indignados
b_indignados.active=1;
b_indignados.sprite=spr_menu_story_main_indignados;
b_indignados.target_room=rm_story_indignados;

//NOTAV
b_notav.active=1;
b_notav.sprite=spr_menu_story_main_notav;
b_notav.target_room=rm_story_notav;

//keratea
b_keratea.active=1;
b_keratea.sprite=spr_menu_story_main_keratea;
b_keratea.target_room=rm_story_keratea;

//tahrir
b_tahrir.active=1;
b_tahrir.sprite=spr_menu_story_main_tahrir;
b_tahrir.target_room=rm_story_tahrir;

ini_close();

//BACK
b_back.active=1;
b_back.sprite=spr_menu_story_main_back;
b_back.target_room=rm_menu;
