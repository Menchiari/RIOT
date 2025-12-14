function scr_global() {
	global.ai=true;
	global.ai_faction=choose(0,1);//0=rebels 1=police
	global.ai_choices=4;
	global.ai_timer_min=room_speed*1;
	global.ai_timer_max=room_speed*4;

	//balancing
	scr_balancing();

	//visual
	global.tilt=20; //isometric from top to left bottom right
	global.shadow_height=-0.3;
	global.shadow_rotation=-20;
	global.shadow_density=0.5;
	global.night=choose(true,false);
	//global.night=true;
	//if current_hour>5 && current_hour<20 {global.night=false}
	global.night_color=make_color_rgb(25,35,45);
	global.night_density=.1;
	global.rimlight_shadow_density=.8;

	//depth
	global.depth_bg3=3000;
	global.depth_bg2=2000;
	global.depth_bg=1000;

	global.depth_fg=-4000;
	global.depth_fgm2=-4200;
	global.depth_fgm3=-4300;

	global.depth_gui=-5000;
	global.depth_guim2=-5200;
	global.depth_guim3=-5300;

	global.depth_menu=0;
	global.depth_menu_key=-10;
	global.depth_menu_fg=-100;

	//audio
	global.audio_music=.8;
	global.audio_music_original=global.audio_music;
	global.audio_music_on=1;
	global.audio_music_menu_track1=snd_music_menu;
	global.audio_music_menu_track2=choose(snd_music_menu,snd_music_menu_complete);
	global.audio_music_menu_track=global.audio_music_menu_track1;
	global.audio_cinematics=1;
	global.audio_gui=.25;
	global.audio_gui_endmatch=.8;
	global.audio_background=.5;
	global.audio_crowd=.1;
	global.audio_crowd_angry=.25;
	global.audio_chants=.2;
	global.audio_police_radio=.15;
	global.audio_camera=.13;
	global.audio_shots=.33;
	global.audio_bomb=.6;
	global.audio_rocks=.075;

	//backend
	global.rebels_defeat=false;
	global.police_defeat=false;
	global.range_melee=10;
	global.range_melee_alert=200;
	global.range_ranged=390;
	global.range_ranged_alert=400;
	global.range_journalists=250;
	global.range_journalists_alert=300;
	global.shooting_chance=5;

	//optimization
	global.max_rebels=800;
	global.max_police=800;
	global.locked_journalists_timer=room_speed*5;

	//debug
	global.debug=false;


}
