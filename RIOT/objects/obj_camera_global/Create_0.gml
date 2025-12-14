x=room_width/2;
y=room_height/2;
start_x=x;
start_y=y;
posx=x;
posy=y;
alarm[0]=room_speed*irandom_range(1,4);
position=irandom_range(0,6);

instance_create(0,0,obj_gui_pause_button);
instance_create(0,0,obj_gui_tvstatic);

level_timer=0;
journalists_rebels=0;
journalists_police=0;
slow_rebels=0;
slow_police=0;
fast_rebels=0;
fast_police=0;
ranged_rebels=0;
ranged_police=0;

death=false;
death_check=true;
violence=global.violence;//violence percentage
violence_check=global.violence_timer;//violence time to check

//SOUND DESIGN//
if global.ai==false
|| room==rm_occupy
|| room==rm_ukraine
|| room==rm_notav_extra1
|| room==rm_notav_extra2
|| room==rm_taksim
|| room==rm_syntagma
|| room==rm_library
|| room==rm_korea
{audio_stop_all();}

alarm[2]=room_speed*(random_range(10,20));

//Background Sound
switch(room)
{
	case rm_indignados1:
		if global.night==true{audio_play_sound_alt(snd_background_forest_day,250,true,global.audio_background,random_range(.9,1.1));}
		else {audio_play_sound_alt(snd_background_forest_night,250,true,global.audio_background,random_range(.9,1.1));}
		audio_play_sound_alt(snd_background_helicopter1,250,true,global.audio_background/2,.3);
		//audio_play_sound_alt(snd_background_helicopter2,250,true,global.audio_background,random_range(.5,1.1));
	break;
	case rm_indignados2:
		if global.night==true{audio_play_sound_alt(snd_background_city_day,250,true,global.audio_background,random_range(1,1.2));}
		else {audio_play_sound_alt(snd_background_city_night,250,true,global.audio_background,random_range(1,1.2));}
		audio_play_sound_alt(snd_background_helicopter1,250,true,global.audio_background,random_range(.9,1.1));
	break;
	case rm_indignados3:
		if global.night==true{audio_play_sound_alt(snd_background_city_day,250,true,global.audio_background,random_range(.9,1.1));}
		else {audio_play_sound_alt(snd_background_city_night,250,true,global.audio_background,random_range(.9,1.1));}
		audio_play_sound_alt(snd_background_helicopter1,250,true,global.audio_background,random_range(.9,1.5));
		audio_play_sound_alt(snd_background_helicopter2,250,true,global.audio_background,random_range(.9,1.5));
	break;
	case rm_indignados4:
		if global.night==true{audio_play_sound_alt(snd_background_city_day,250,true,global.audio_background,random_range(1.3,1.1));}
		else {audio_play_sound_alt(snd_background_city_night,250,true,global.audio_background,random_range(1,1.2));}
		audio_play_sound_alt(snd_background_helicopter1,250,true,global.audio_background,random_range(.9,1.1));
		audio_play_sound_alt(snd_background_helicopter2,250,true,global.audio_background,random_range(.9,1.1));
		audio_play_sound_alt(snd_background_city_day,250,true,global.audio_background,random_range(.9,1.1));
	break;
	case rm_occupy:
		if global.night==true{audio_play_sound_alt(snd_background_city_day,250,true,global.audio_background,random_range(.6,.8));}
		else {audio_play_sound_alt(snd_background_city_night,250,true,global.audio_background,random_range(.6,.8));}
		audio_play_sound_alt(snd_background_helicopter1,250,true,global.audio_background,random_range(.6,1.2));
		audio_play_sound_alt(snd_background_helicopter2,250,true,global.audio_background,random_range(.6,1.2));
	break;
	case rm_ukraine:
		if global.night==true{audio_play_sound_alt(snd_background_city_day,250,true,global.audio_background,random_range(.9,1.5));}
		else {audio_play_sound_alt(snd_background_city_night,250,true,global.audio_background,random_range(.9,1.5));}
		audio_play_sound_alt(snd_background_helicopter1,250,true,global.audio_background/2,random_range(.1,1.5));
	break;

	case rm_notav1:
		if global.night==true{audio_play_sound_alt(snd_background_forest_day,250,true,global.audio_background,random_range(.9,1.1));}
		else {audio_play_sound_alt(snd_background_forest_night,250,true,global.audio_background,random_range(.9,1.1));}
		audio_play_sound_alt(snd_background_helicopter1,250,true,global.audio_background,random_range(.9,1.1));
		audio_play_sound_alt(snd_background_helicopter2,250,true,global.audio_background,random_range(.9,1.1));
	break;
	case rm_notav2:
		if global.night==true{audio_play_sound_alt(snd_background_forest_day,250,true,global.audio_background,random_range(1,1.2));}
		else {audio_play_sound_alt(snd_background_forest_night,250,true,global.audio_background,random_range(1,1.2));}
		audio_play_sound_alt(snd_background_helicopter1,250,true,global.audio_background,random_range(.9,1.1));
	break;
	case rm_notav3:
		if global.night==true{audio_play_sound_alt(snd_background_city_day,250,true,global.audio_background,random_range(.9,1.1));}
		else {audio_play_sound_alt(snd_background_city_night,250,true,global.audio_background,random_range(.9,1.1));}
		audio_play_sound_alt(snd_background_helicopter1,250,true,global.audio_background,random_range(.9,1.1));
		audio_play_sound_alt(snd_background_helicopter2,250,true,global.audio_background,random_range(.9,1.1));
	break;
	case rm_notav4:
		if global.night==true{audio_play_sound_alt(snd_background_forest_day,250,true,global.audio_background,random_range(1.3,1.1));}
		else {audio_play_sound_alt(snd_background_forest_night,250,true,global.audio_background,random_range(1,1.2));}
	break;
	case rm_notav_extra1:
		if global.night==true{audio_play_sound_alt(snd_background_forest_day,250,true,global.audio_background,random_range(.6,.8));}
		else {audio_play_sound_alt(snd_background_forest_night,250,true,global.audio_background,random_range(.6,.8));}
		audio_play_sound_alt(snd_background_helicopter1,250,true,global.audio_background,random_range(.6,1.1));
	break;
	case rm_notav_extra2:
		if global.night==true{audio_play_sound_alt(snd_background_city_day,250,true,global.audio_background,random_range(.9,1.1));}
		else {audio_play_sound_alt(snd_background_city_night,250,true,global.audio_background,random_range(.9,1.1));}
		audio_play_sound_alt(snd_background_helicopter1,250,true,global.audio_background,random_range(.9,1.1));
		audio_play_sound_alt(snd_background_helicopter2,250,true,global.audio_background,random_range(.9,1.1));
	break;
	
	case rm_keratea1:
		if global.night==true
		{
			audio_play_sound_alt(snd_background_forest_day,250,true,global.audio_background,random_range(.9,1.1));
			audio_play_sound_alt(snd_background_city_day,250,true,global.audio_background,random_range(.9,1.1));
		}
		else 
		{
			audio_play_sound_alt(snd_background_forest_night,250,true,global.audio_background,random_range(.9,1.1));
			audio_play_sound_alt(snd_background_city_night,250,true,global.audio_background,random_range(.9,1.1));
		}
	break;
	case rm_keratea2:
		if global.night==true
		{
			audio_play_sound_alt(snd_background_forest_day,250,true,global.audio_background,random_range(.9,1.1));
			audio_play_sound_alt(snd_background_city_day,250,true,global.audio_background,random_range(.9,1.1));
		}
		else 
		{
			audio_play_sound_alt(snd_background_forest_night,250,true,global.audio_background,random_range(.9,1.1));
			audio_play_sound_alt(snd_background_city_night,250,true,global.audio_background,random_range(.9,1.1));
		}
		audio_play_sound_alt(snd_background_helicopter1,250,true,global.audio_background,random_range(.6,.8));
	break;
	case rm_keratea3:
		if global.night==true{audio_play_sound_alt(snd_background_forest_day,250,true,global.audio_background,random_range(1.3,1.1));}
		else {audio_play_sound_alt(snd_background_forest_night,250,true,global.audio_background,random_range(1.3,1.1));}
	break;
	case rm_keratea4:
		if global.night==true{audio_play_sound_alt(snd_background_forest_day,250,true,global.audio_background,random_range(.7,.9));}
		else {audio_play_sound_alt(snd_background_forest_night,250,true,global.audio_background,random_range(.7,.9));}
	break;
	case rm_taksim:
		if global.night==true{audio_play_sound_alt(snd_background_city_day,250,true,global.audio_background,random_range(.6,.8));}
		else {audio_play_sound_alt(snd_background_city_night,250,true,global.audio_background,random_range(.6,.8));}
		audio_play_sound_alt(snd_background_city_day,250,true,global.audio_background,random_range(.6,1.1));
		audio_play_sound_alt(snd_background_helicopter1,250,true,global.audio_background,random_range(.6,1.1));
		audio_play_sound_alt(snd_background_helicopter2,250,true,global.audio_background,random_range(.6,1.1));
	break;
	case rm_syntagma:
		if global.night==true{audio_play_sound_alt(snd_background_city_day,250,true,global.audio_background,random_range(.9,1.1));}
		else {audio_play_sound_alt(snd_background_city_night,250,true,global.audio_background,random_range(.9,1.1));}
		audio_play_sound_alt(snd_background_helicopter1,250,true,global.audio_background/2,random_range(.9,1.1));
		audio_play_sound_alt(snd_background_helicopter2,250,true,global.audio_background/2,random_range(.9,1.1));
	break;
	
	case rm_tahrir1:
		if global.night==true
		{
			audio_play_sound_alt(snd_background_forest_day,250,true,global.audio_background,random_range(.9,1.1));
			audio_play_sound_alt(snd_background_city_day,250,true,global.audio_background,random_range(.9,1.1));
		}
		else 
		{
			audio_play_sound_alt(snd_background_forest_night,250,true,global.audio_background,random_range(.9,1.1));
			audio_play_sound_alt(snd_background_city_night,250,true,global.audio_background,random_range(.9,1.1));
		}
		audio_play_sound_alt(snd_background_helicopter1,250,true,global.audio_background,random_range(.9,1.1));
		audio_play_sound_alt(snd_background_helicopter2,250,true,global.audio_background,random_range(.9,1.1));
	break;
	case rm_tahrir2:
		if global.night==true{audio_play_sound_alt(snd_background_city_day,250,true,global.audio_background,random_range(1,1.2));}
		else {audio_play_sound_alt(snd_background_city_night,250,true,global.audio_background,random_range(1,1.2));}
		audio_play_sound_alt(snd_background_helicopter1,250,true,global.audio_background,random_range(.9,1.1));
		audio_play_sound_alt(snd_background_helicopter2,250,true,global.audio_background,random_range(.9,1.1));
		audio_play_sound_alt(snd_background_helicopter2,250,true,global.audio_background,random_range(.5,.6));
	break;
	case rm_tahrir3:
		if global.night==true{audio_play_sound_alt(snd_background_city_day,250,true,global.audio_background,random_range(.9,1.1));}
		else {audio_play_sound_alt(snd_background_city_night,250,true,global.audio_background,random_range(.9,1.1));}
		audio_play_sound_alt(snd_background_helicopter1,250,true,global.audio_background,random_range(.6,.8));
	break;
	case rm_tahrir4:
		if global.night==true{audio_play_sound_alt(snd_background_city_day,250,true,global.audio_background,random_range(1.3,1.1));}
		else {audio_play_sound_alt(snd_background_city_night,250,true,global.audio_background,random_range(1,1.2));}
	break;
	case rm_tahrir5:
		if global.night==true{audio_play_sound_alt(snd_background_city_day,250,true,global.audio_background,random_range(.6,.8));}
		else {audio_play_sound_alt(snd_background_city_night,250,true,global.audio_background,random_range(.6,.8));}
	break;
	case rm_library:
		if global.night==true{audio_play_sound_alt(snd_background_city_day,250,true,global.audio_background/2,random_range(.6,.8));}
		else {audio_play_sound_alt(snd_background_city_night,250,true,global.audio_background/2,random_range(.6,.8));}
	break;
	case rm_korea:
		if global.night==true{audio_play_sound_alt(snd_background_city_day,250,true,global.audio_background,random_range(.9,1.1));}
		else {audio_play_sound_alt(snd_background_city_night,250,true,global.audio_background,random_range(.9,1.1));}
		audio_play_sound_alt(snd_background_helicopter1,250,true,global.audio_background,random_range(.9,1.1));
		audio_play_sound_alt(snd_background_helicopter2,250,true,global.audio_background,random_range(.9,1.1));
	break;
	
	default:
	if global.night==true{audio_play_sound_alt(choose(snd_background_city_day,snd_background_forest_day),250,true,global.audio_background*random_range(.3,1),random_range(.6,1.5));}
	else {audio_play_sound_alt(choose(snd_background_city_night,snd_background_forest_night),250,true,global.audio_background*random_range(.3,1),random_range(.6,1.5));}
	audio_play_sound_alt(choose(snd_background_helicopter1,snd_background_helicopter2),250,true,global.audio_background*random_range(0,1.1),random_range(.5,1.5));
	audio_play_sound_alt(choose(snd_background_helicopter1,snd_background_helicopter2),250,true,global.audio_background*random_range(0,1.1),random_range(.5,1.5));
	break;
}

//Crowd Sound
crowd_sound=snd_null;
crowd_sound_angry=snd_null;
crowd_sound_angry_volume=global.audio_crowd_angry;
crowd_sound_check_sec=3;

if global.rebel_wall_density<10		{crowd_sound=snd_crowd_rebels_10; crowd_sound_angry=snd_crowd_rebels_angry_10;}
if global.rebel_wall_density>=10	{crowd_sound=snd_crowd_rebels_50; crowd_sound_angry=snd_crowd_rebels_angry_50;}
if global.rebel_wall_density>=20	{crowd_sound=snd_crowd_rebels_100; crowd_sound_angry=snd_crowd_rebels_angry_100;}
if global.rebel_wall_density>=30	{crowd_sound=snd_crowd_rebels_250; crowd_sound_angry=snd_crowd_rebels_angry_250;}
if global.rebel_wall_density>=35	{crowd_sound=snd_crowd_rebels_340; crowd_sound_angry=snd_crowd_rebels_angry_340;}
audio_play_sound(crowd_sound,250,true);
audio_sound_gain(crowd_sound,global.audio_crowd,0);
audio_play_sound(crowd_sound_angry,250,true);
audio_sound_gain(crowd_sound_angry,0,0);
audio_sound_pitch(crowd_sound_angry,random_range(.75,1));
alarm[2]=room_speed*crowd_sound_check_sec;