sprite=spr_gui_story_victory;
depth=global.depth_guim2;
image_alpha=0;

button_restart=instance_create(x,y,obj_gui_button);
with button_restart
{
	sprite=spr_gui_story_victory_restart;
	target_room=room;
}

button_next=instance_create(x,y,obj_gui_button);
with button_next
{
	sprite=spr_gui_story_victory_next;
	switch(room)
	{
		//indignados
		case rm_indignados1:
			target_room=rm_cinematics_indignados_intro;
		break;
		case rm_indignados2:
			target_room=rm_cinematics_indignados3;
		break;
		case rm_indignados3:
			target_room=rm_cinematics_indignados4;
		break;
		case rm_indignados4:
			if global.ai_faction==0 {target_room=rm_cinematics_indignados_op;}
			else {target_room=rm_cinematics_indignados_or;}
		break;
		case rm_occupy:
			target_room=rm_story_indignados;
		break;
		case rm_ukraine:
			target_room=rm_story_indignados;
		break;
		
		//notav
		case rm_notav1:
			target_room=rm_cinematics_notav2;
		break;
		case rm_notav2:
			target_room=rm_cinematics_notav3;
		break;
		case rm_notav3:
			target_room=rm_cinematics_notav4;
		break;
		case rm_notav4:
			target_room=rm_cinematics_notav_outro;
		break;
		case rm_notav_extra1:
			target_room=rm_story_notav;
		break;
		case rm_notav_extra2:
			target_room=rm_story_notav;
		break;

		//keratea
		case rm_keratea1:
			target_room=rm_cinematics_keratea2;
		break;
		case rm_keratea2:
			target_room=rm_cinematics_keratea3;
		break;
		case rm_keratea3:
			target_room=rm_cinematics_keratea4;
		break;
		case rm_keratea4:
			target_room=rm_cinematics_keratea_outro;
		break;
		case rm_taksim:
			target_room=rm_story_keratea;
		break;
		case rm_syntagma:
			target_room=rm_story_keratea;
		break;

		//tahrir
		case rm_tahrir1:
			target_room=rm_cinematics_tahrir2;
		break;
		case rm_tahrir2:
			target_room=rm_cinematics_tahrir3;
		break;
		case rm_tahrir3:
			target_room=rm_cinematics_tahrir4;
		break;
		case rm_tahrir4:
			target_room=rm_cinematics_tahrir5;
		break;
		case rm_tahrir5:
			if global.ai_faction==0 {target_room=rm_cinematics_tahrir_op;}
			else {target_room=rm_cinematics_tahrir_or;}
		break;
		case rm_library:
			target_room=rm_story_tahrir;
		break;
		case rm_korea:
			target_room=rm_story;
		break;

		default:
			target_room=rm_menu;
		break;
	}
}

//ACHIEVEMENTS and TIMER VARS
ach_color_active=c_white;
ach_color_inactive=c_gray;
ach_color1=ach_color_inactive;
ach_color2=ach_color_inactive;
ach_color3=ach_color_inactive;
ach_text1="LOCKED ACHIEVEMENT";
ach_text2="LOCKED ACHIEVEMENT";
ach_text3="LOCKED ACHIEVEMENT";

ach_timer=false;
best_time_anim=false;
best_time=0;
best_time_color=c_white;
best_time_alpha=c_white;
best_time_alpha_speed=.05;
this_time=0;

//SAVING
ini_open("save.ini");
//LEVELS UNLOCK
switch(room)
{
	case rm_indignados1:
		if global.ai_faction==1 {ini_write_real("MAPS","indignados1r",1);}
		else {ini_write_real("MAPS","indignados1p",1);}
	break;
	case rm_indignados2:
		if global.ai_faction==1 {ini_write_real("MAPS","indignados2r",1);}
		else {ini_write_real("MAPS","indignados2p",1);}
	break;
	case rm_indignados3:
		if global.ai_faction==1 {ini_write_real("MAPS","indignados3r",1);}
		else {ini_write_real("MAPS","indignados3p",1);}
	break;
	case rm_indignados4:
		if global.ai_faction==1 {ini_write_real("MAPS","indignados4r",1);}
		else {ini_write_real("MAPS","indignados4p",1);}
	break;
	
	case rm_notav1:
		if global.ai_faction==1 {ini_write_real("MAPS","notav1r",1);}
		else {ini_write_real("MAPS","notav1p",1);}
	break;
	case rm_notav2:
		if global.ai_faction==1 {ini_write_real("MAPS","notav2r",1);}
		else {ini_write_real("MAPS","notav2p",1);}
	break;
	case rm_notav3:
		if global.ai_faction==1 {ini_write_real("MAPS","notav3r",1);}
		else {ini_write_real("MAPS","notav3p",1);}
	break;
	case rm_notav4:
		if global.ai_faction==1 {ini_write_real("MAPS","notav4r",1);}
		else {ini_write_real("MAPS","notav4p",1);}
	break;
	
	case rm_keratea1:
		if global.ai_faction==1 {ini_write_real("MAPS","keratea1r",1);}
		else {ini_write_real("MAPS","keratea1p",1);}
	break;
	case rm_keratea2:
		if global.ai_faction==1 {ini_write_real("MAPS","keratea2r",1);}
		else {ini_write_real("MAPS","keratea2p",1);}
	break;
	case rm_keratea3:
		if global.ai_faction==1 {ini_write_real("MAPS","keratea3r",1);}
		else {ini_write_real("MAPS","keratea3p",1);}
	break;
	case rm_keratea4:
		if global.ai_faction==1 {ini_write_real("MAPS","keratea4r",1);}
		else {ini_write_real("MAPS","keratea4p",1);}
	break;

	case rm_tahrir1:
		if global.ai_faction==1 {ini_write_real("MAPS","tahrir1r",1);}
		else {ini_write_real("MAPS","tahrir1p",1);}
	break;
	case rm_tahrir2:
		if global.ai_faction==1 {ini_write_real("MAPS","tahrir2r",1);}
		else {ini_write_real("MAPS","tahrir2p",1);}
	break;
	case rm_tahrir3:
		if global.ai_faction==1 {ini_write_real("MAPS","tahrir3r",1);}
		else {ini_write_real("MAPS","tahrir3p",1);}
	break;
	case rm_tahrir4:
		if global.ai_faction==1 {ini_write_real("MAPS","tahrir4r",1);}
		else {ini_write_real("MAPS","tahrir4p",1);}
	break;
	case rm_tahrir5:
		if global.ai_faction==1 {ini_write_real("MAPS","tahrir5r",1);}
		else {ini_write_real("MAPS","tahrir5p",1);}
	break;

	case rm_occupy:
		if global.ai_faction==1 {ini_write_real("MAPS","occupyr",1);}
		else {ini_write_real("MAPS","occupyp",1);}
	break;
	case rm_ukraine:
		if global.ai_faction==1 {ini_write_real("MAPS","ukrainer",1);}
		else {ini_write_real("MAPS","ukrainep",1);}
	break;
	case rm_notav_extra1:
		if global.ai_faction==1 {ini_write_real("MAPS","extra1r",1);}
		else {ini_write_real("MAPS","extra1p",1);}
	break;
	case rm_notav_extra2:
		if global.ai_faction==1 {ini_write_real("MAPS","extra2r",1);}
		else {ini_write_real("MAPS","extra2p",1);}
	break;
	case rm_taksim:
		if global.ai_faction==1 {ini_write_real("MAPS","taksimr",1);}
		else {ini_write_real("MAPS","taksimp",1);}
	break;
	case rm_syntagma:
		if global.ai_faction==1 {ini_write_real("MAPS","syntagmar",1);}
		else {ini_write_real("MAPS","syntagmap",1);}
	break;
	case rm_library:
		if global.ai_faction==1 {ini_write_real("MAPS","libraryr",1);}
		else {ini_write_real("MAPS","libraryp",1);}
	break;
	case rm_korea:
		if global.ai_faction==1 {ini_write_real("MAPS","korear",1);}
		else {ini_write_real("MAPS","koreap",1);}
	break;
}
//ACHIEVEMENTS UNLOCK
if instance_exists(obj_camera_global)
{
	//stars
	switch(room)
	{
		case rm_indignados1:	scr_victory_achievements("indignados1");	break;
		case rm_indignados2:	scr_victory_achievements("indignados2");	break;
		case rm_indignados3:	scr_victory_achievements("indignados3");	break;
		case rm_indignados4:	scr_victory_achievements("indignados4");	break;
		case rm_notav1:			scr_victory_achievements("notav1");			break;
		case rm_notav2:			scr_victory_achievements("notav2");			break;
		case rm_notav3:			scr_victory_achievements("notav3");			break;
		case rm_notav4:			scr_victory_achievements("notav4");			break;
		case rm_keratea1:		scr_victory_achievements("keratea1");		break;
		case rm_keratea2:		scr_victory_achievements("keratea2");		break;
		case rm_keratea3:		scr_victory_achievements("keratea3");		break;
		case rm_keratea4:		scr_victory_achievements("keratea4");		break;
		case rm_tahrir1:		scr_victory_achievements("tahrir1");		break;
		case rm_tahrir2:		scr_victory_achievements("tahrir2");		break;
		case rm_tahrir3:		scr_victory_achievements("tahrir3");		break;
		case rm_tahrir4:		scr_victory_achievements("tahrir4");		break;
		case rm_tahrir5:		scr_victory_achievements("tahrir5");		break;
		case rm_notav_extra1:	scr_victory_achievements("extra1");			break;
		case rm_notav_extra2:	scr_victory_achievements("extra2");			break;
		case rm_occupy:			scr_victory_achievements("occupy");			break;
		case rm_ukraine:		scr_victory_achievements("ukraine");		break;
		case rm_taksim:			scr_victory_achievements("taksim");			break;
		case rm_syntagma:		scr_victory_achievements("syntagma");		break;
		case rm_library:		scr_victory_achievements("library");		break;
		case rm_korea:			scr_victory_achievements("korea");			break;
	}

	//Best Time
	this_time=obj_camera_global.level_timer;
	best_time=ini_read_real("ACHIEVEMENTS","best_time",99999);
	if this_time<best_time
	{
		best_time=this_time;
		best_time_anim=true;
		ini_write_real("ACHIEVEMENTS","best_time",obj_camera_global.level_timer);
	}
ini_close();
}

instance_create(0,0,obj_gui_tvstatic);

//////////SOUND/////////
audio_play_sound(snd_gui_endgame,500,false);
audio_sound_gain(snd_gui_endgame,0,0);
audio_sound_gain(snd_gui_endgame,global.audio_gui_endmatch,4000);

if global.ai_faction==0
{
	audio_play_sound(snd_music_victory_police,500,false);
	audio_sound_gain(snd_music_victory_police,global.audio_gui_endmatch,0);
}
else
{
	audio_play_sound(snd_music_victory_rebels,500,false);
	audio_sound_gain(snd_music_victory_rebels,global.audio_gui_endmatch,0);
}