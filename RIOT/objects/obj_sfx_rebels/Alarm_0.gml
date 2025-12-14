/// @description Play Chant

switch(chant)
{
	case 0://asaradura
		voice_single=snd_chant_asaradura_s_4a;
		voice_crowd1=snd_chant_asaradura_c_a;
		voice_crowd2=snd_chant_asaradura_c_b;
		voice_crowd3=snd_chant_asaradura_c_c;
	break;
	case 1://logica
		voice_single=choose(snd_chant_logica_s_1f,snd_chant_logica_s_3a,snd_chant_logica_s_4a,snd_chant_logica_s_5a);
		voice_crowd1=snd_chant_logica_c_a;
		voice_crowd2=snd_chant_logica_c_b;
		voice_crowd3=snd_chant_logica_c_c;
	break;
	case 2://nopaura
		voice_single=choose(snd_chant_nopaura_s_1c,snd_chant_nopaura_s_2a,snd_chant_nopaura_s_3a,snd_chant_nopaura_s_4c,snd_chant_nopaura_s_5c);
		voice_crowd1=snd_chant_nopaura_c_b;
		voice_crowd2=snd_chant_nopaura_c_c;
		voice_crowd3=snd_chant_nopaura_c_d;
	break;
	case 3://notav
		voice_single=choose(snd_chant_notav_s_1bf,snd_chant_notav_s_2a,snd_chant_notav_s_3a,snd_chant_notav_s_5a);
		voice_crowd1=snd_chant_notav_c_a;
		voice_crowd2=snd_chant_notav_c_b;
		voice_crowd3=snd_chant_notav_c_c;
	break;
	case 4://playmobil
		voice_single=choose(snd_chant_playmobill_s_1a,snd_chant_playmobill_s_1b,snd_chant_playmobill_s_2b,snd_chant_playmobill_s_3a,snd_chant_playmobill_s_3b,snd_chant_playmobill_s_4a,snd_chant_playmobill_s_4b,snd_chant_playmobill_s_5b,snd_chant_playmobill_s_5c);
		voice_crowd1=choose(snd_chant_playmobill_s_1a,snd_chant_playmobill_s_1b,snd_chant_playmobill_s_2b,snd_chant_playmobill_s_3a,snd_chant_playmobill_s_3b,snd_chant_playmobill_s_4a,snd_chant_playmobill_s_4b,snd_chant_playmobill_s_5b,snd_chant_playmobill_s_5c);
		voice_crowd2=choose(snd_chant_playmobill_s_1a,snd_chant_playmobill_s_1b,snd_chant_playmobill_s_2b,snd_chant_playmobill_s_3a,snd_chant_playmobill_s_3b,snd_chant_playmobill_s_4a,snd_chant_playmobill_s_4b,snd_chant_playmobill_s_5b,snd_chant_playmobill_s_5c);
		voice_crowd3=choose(snd_chant_playmobill_s_1a,snd_chant_playmobill_s_1b,snd_chant_playmobill_s_2b,snd_chant_playmobill_s_3a,snd_chant_playmobill_s_3b,snd_chant_playmobill_s_4a,snd_chant_playmobill_s_4b,snd_chant_playmobill_s_5b,snd_chant_playmobill_s_5c);
	break;
	case 5://vittoria
		voice_single=choose(snd_chant_vittoria_s_1a,snd_chant_vittoria_s_2a,snd_chant_vittoria_s_2b,snd_chant_vittoria_s_3b,snd_chant_vittoria_s_4a,snd_chant_vittoria_s_4b,snd_chant_vittoria_s_5a);
		voice_crowd1=choose(snd_chant_vittoria_c_a,snd_chant_vittoria_c_b);
		voice_crowd2=choose(snd_chant_vittoria_c_c,snd_chant_vittoria_c_d);
		voice_crowd3=choose(snd_chant_vittoria_c_a,snd_chant_vittoria_c_b,snd_chant_vittoria_c_c,snd_chant_vittoria_c_d);
	break;
	case 6://nomuos1
		voice_single=choose(snd_chant_nomuos_s_1a,snd_chant_nomuos_s_1b,snd_chant_nomuos_s_1cf,snd_chant_nomuos_s_2a,snd_chant_nomuos_s_2b,snd_chant_nomuos_s_4a,snd_chant_nomuos_s_4b,snd_chant_nomuos_s_5a,snd_chant_nomuos_s_5b);
		voice_crowd1=choose(snd_chant_nomuos1_c_a,snd_chant_nomuos1_c_b);
		voice_crowd2=choose(snd_chant_nomuos1_c_c,snd_chant_nomuos1_c_d);
		voice_crowd3=choose(snd_chant_nomuos1_c_a,snd_chant_nomuos1_c_b,snd_chant_nomuos1_c_c,snd_chant_nomuos1_c_d);
	break;
	case 7://nomuos2
		voice_single=choose(snd_chant_nomuos2_s_1a,snd_chant_nomuos2_s_1b,snd_chant_nomuos2_s_2a,snd_chant_nomuos2_s_2b,snd_chant_nomuos2_s_4a,snd_chant_nomuos2_s_5a,snd_chant_nomuos2_s_5b);
		voice_crowd1=snd_chant_nomuos2_c_a;
		voice_crowd2=snd_chant_nomuos2_c_b;
		voice_crowd3=snd_chant_nomuos2_c_c;
	break;
	case 8://nojustice
		voice_single=choose(snd_chant_nojustice_s_1a,snd_chant_nojustice_s_2a,snd_chant_nojustice_s_3a,snd_chant_nojustice_s_4a,snd_chant_nojustice_s_5af);
		voice_crowd1=choose(snd_chant_nojustice_c_a,snd_chant_nojustice_c_b,snd_chant_nojustice_c_c,snd_chant_nojustice_c_d);
		voice_crowd2=choose(snd_chant_nojustice_c_a,snd_chant_nojustice_c_b,snd_chant_nojustice_c_c,snd_chant_nojustice_c_d);
		voice_crowd3=choose(snd_chant_nojustice_c_a,snd_chant_nojustice_c_b,snd_chant_nojustice_c_c,snd_chant_nojustice_c_d);
	break;
	case 9://generic2
		voice_single=choose(snd_chant_generic2_s_1a,snd_chant_generic2_s_1b,snd_chant_generic2_s_2a,snd_chant_generic2_s_2b,snd_chant_generic2_s_3a,snd_chant_generic2_s_3b,snd_chant_generic2_s_3c,snd_chant_generic2_s_4a,snd_chant_generic2_s_4b,snd_chant_generic2_s_4c,snd_chant_generic2_s_5a,snd_chant_generic2_s_5b);
		voice_crowd1=choose(snd_chant_generic2_c_a,snd_chant_generic2_c_b,snd_chant_generic2_c_c,snd_chant_generic2_c_d);
		voice_crowd2=choose(snd_chant_generic2_c_a,snd_chant_generic2_c_b,snd_chant_generic2_c_c,snd_chant_generic2_c_d);
		voice_crowd3=choose(snd_chant_generic2_c_a,snd_chant_generic2_c_b,snd_chant_generic2_c_c,snd_chant_generic2_c_d);
	break;
	case 10://generic4
		voice_single=choose(snd_chant_generic4_s_1a,snd_chant_generic4_s_2a,snd_chant_generic4_s_3a,snd_chant_generic4_s_4a,snd_chant_generic4_s_5a);
		voice_crowd1=snd_chant_generic4_c_a;
		voice_crowd2=snd_chant_generic4_c_b;
		voice_crowd3=choose(snd_chant_generic4_c_a,snd_chant_generic4_c_b);
	break;
	case 11://democracia
		voice_single=choose(snd_chant_democracia_s_1a,snd_chant_democracia_s_1b,snd_chant_democracia_s_1b,snd_chant_democracia_s_1c,snd_chant_democracia_s_2a,snd_chant_democracia_s_2b,snd_chant_democracia_s_2c,snd_chant_democracia_s_3a_f,snd_chant_democracia_s_3b,snd_chant_democracia_s_3c,snd_chant_democracia_s_4a,snd_chant_democracia_s_4bc,snd_chant_democracia_s_5a,snd_chant_democracia_s_5bc);
		voice_crowd1=snd_chant_democracia_c_b;
		voice_crowd2=snd_chant_democracia_c_c;
		voice_crowd3=choose(snd_chant_democracia_c_b,snd_chant_democracia_c_c);
	break;
	case 12://chorizo
		voice_single=choose(snd_chant_chorizo_s_1a,snd_chant_chorizo_s_1b,snd_chant_chorizo_s_1c,snd_chant_chorizo_s_2a,snd_chant_chorizo_s_2b,snd_chant_chorizo_s_2c,snd_chant_chorizo_s_3a,snd_chant_chorizo_s_3b,snd_chant_chorizo_s_3c,snd_chant_chorizo_s_4a,snd_chant_chorizo_s_4b,snd_chant_chorizo_s_4c,snd_chant_chorizo_s_5a,snd_chant_chorizo_s_5b,snd_chant_chorizo_s_5c);
		voice_crowd1=choose(snd_chant_chorizo_c_a,snd_chant_chorizo_c_b,snd_chant_chorizo_c_c,snd_chant_chorizo_c_d);
		voice_crowd2=choose(snd_chant_chorizo_c_a,snd_chant_chorizo_c_b,snd_chant_chorizo_c_c,snd_chant_chorizo_c_d);
		voice_crowd3=choose(snd_chant_chorizo_c_a,snd_chant_chorizo_c_b,snd_chant_chorizo_c_c,snd_chant_chorizo_c_d);
	break;
	case 13://pueblo
		voice_single=choose(snd_chant_pueblo_s_1a,snd_chant_pueblo_s_1b,snd_chant_pueblo_s_1c,snd_chant_pueblo_s_1d,snd_chant_pueblo_s_2a,snd_chant_pueblo_s_2b,snd_chant_pueblo_s_2c,snd_chant_pueblo_s_2d,snd_chant_pueblo_s_3a,snd_chant_pueblo_s_3b,snd_chant_pueblo_s_3c,snd_chant_pueblo_s_3d,snd_chant_pueblo_s_4a,snd_chant_pueblo_s_4b,snd_chant_pueblo_s_4c,snd_chant_pueblo_s_4d,snd_chant_pueblo_s_5a,snd_chant_pueblo_s_5b,snd_chant_pueblo_s_5c,snd_chant_pueblo_s_5d);
		voice_crowd1=choose(snd_chant_pueblo_c_a,snd_chant_pueblo_c_b,snd_chant_pueblo_c_c,snd_chant_pueblo_c_d);
		voice_crowd2=choose(snd_chant_pueblo_c_a,snd_chant_pueblo_c_b,snd_chant_pueblo_c_c,snd_chant_pueblo_c_d);
		voice_crowd3=choose(snd_chant_pueblo_c_a,snd_chant_pueblo_c_b,snd_chant_pueblo_c_c,snd_chant_pueblo_c_d);
	break;
	case 14://queno
		voice_single=choose(snd_chant_queno_s_1a,snd_chant_queno_s_1b,snd_chant_queno_s_1c,snd_chant_queno_s_2a,snd_chant_queno_s_2b,snd_chant_queno_s_2c,snd_chant_queno_s_3a,snd_chant_queno_s_3b,snd_chant_queno_s_3c,snd_chant_queno_s_4a,snd_chant_queno_s_4b,snd_chant_queno_s_4c,snd_chant_queno_s_4d,snd_chant_queno_s_5a,snd_chant_queno_s_5b,snd_chant_queno_s_5c,snd_chant_queno_s_5d);
		voice_crowd1=choose(snd_chant_queno_c_a,snd_chant_queno_c_b,snd_chant_queno_c_c,snd_chant_queno_c_d);
		voice_crowd2=choose(snd_chant_queno_c_a,snd_chant_queno_c_b,snd_chant_queno_c_c,snd_chant_queno_c_d);
		voice_crowd3=choose(snd_chant_queno_c_a,snd_chant_queno_c_b,snd_chant_queno_c_c,snd_chant_queno_c_d);
	break;
	case 15://greece1
		voice_single=choose(snd_chant_greece_1_s_1a,snd_chant_greece_1_s_1b,snd_chant_greece_1_s_1cf,snd_chant_greece_1_s_1d,snd_chant_greece_1_s_2a,snd_chant_greece_1_s_2b,snd_chant_greece_1_s_2c,snd_chant_greece_1_s_2d,snd_chant_greece_1_s_3a,snd_chant_greece_1_s_3b,snd_chant_greece_1_s_3c,snd_chant_greece_1_s_3d,snd_chant_greece_1_s_4a,snd_chant_greece_1_s_4b,snd_chant_greece_1_s_4c,snd_chant_greece_1_s_4d,snd_chant_greece_1_s_5a,snd_chant_greece_1_s_5b,snd_chant_greece_1_s_5c);
		voice_crowd1=choose(snd_chant_greece1_c_a,snd_chant_greece1_c_b,snd_chant_greece1_c_c,snd_chant_greece1_c_d);
		voice_crowd2=choose(snd_chant_greece1_c_a,snd_chant_greece1_c_b,snd_chant_greece1_c_c,snd_chant_greece1_c_d);
		voice_crowd3=choose(snd_chant_greece1_c_a,snd_chant_greece1_c_b,snd_chant_greece1_c_c,snd_chant_greece1_c_d);
	break;
	case 16://greece2
		voice_single=choose(snd_chant_greece2_s_1a,snd_chant_greece2_s_1b,snd_chant_greece2_s_1c,snd_chant_greece2_s_1d,snd_chant_greece2_s_3a,snd_chant_greece2_s_3b,snd_chant_greece2_s_3c,snd_chant_greece2_s_4a,snd_chant_greece2_s_4b,snd_chant_greece2_s_4c,snd_chant_greece2_s_5a,snd_chant_greece2_s_5b,snd_chant_greece2_s_5c);
		voice_crowd1=choose(snd_chant_greece2_c_a,snd_chant_greece2_c_b,snd_chant_greece2_c_c,snd_chant_greece2_c_d);
		voice_crowd2=choose(snd_chant_greece2_c_a,snd_chant_greece2_c_b,snd_chant_greece2_c_c,snd_chant_greece2_c_d);
		voice_crowd3=choose(snd_chant_greece2_c_a,snd_chant_greece2_c_b,snd_chant_greece2_c_c,snd_chant_greece2_c_d);
	break;
	case 17://greece3
		voice_single=choose(snd_chant_greece3_s_1a,snd_chant_greece3_s_1b,snd_chant_greece3_s_1c,snd_chant_greece3_s_1d,snd_chant_greece3_s_2a,snd_chant_greece3_s_2b,snd_chant_greece3_s_2c,snd_chant_greece3_s_2d,snd_chant_greece3_s_3a,snd_chant_greece3_s_3b,snd_chant_greece3_s_3c,snd_chant_greece3_s_3d,snd_chant_greece3_s_4a,snd_chant_greece3_s_4b,snd_chant_greece3_s_4c,snd_chant_greece3_s_4d,snd_chant_greece3_s_5a,snd_chant_greece3_s_5b,snd_chant_greece3_s_5c);
		voice_crowd1=choose(snd_chant_greece3_c_a,snd_chant_greece3_c_b,snd_chant_greece3_c_c,snd_chant_greece3_c_d);
		voice_crowd2=choose(snd_chant_greece3_c_a,snd_chant_greece3_c_b,snd_chant_greece3_c_c,snd_chant_greece3_c_d);
		voice_crowd3=choose(snd_chant_greece3_c_a,snd_chant_greece3_c_b,snd_chant_greece3_c_c,snd_chant_greece3_c_d);
	break;
	case 18://greece4
		voice_single=choose(snd_chant_greece4_s_1a,snd_chant_greece4_s_1b,snd_chant_greece4_s_1c,snd_chant_greece4_s_2a,snd_chant_greece4_s_2b,snd_chant_greece4_s_2c,snd_chant_greece4_s_3a,snd_chant_greece4_s_3b,snd_chant_greece4_s_3c,snd_chant_greece4_s_4a,snd_chant_greece4_s_4b,snd_chant_greece4_s_4c,snd_chant_greece4_s_5a,snd_chant_greece4_s_5b);
		voice_crowd1=snd_chant_greece4_c_a
		voice_crowd2=snd_chant_greece4_c_b
		voice_crowd3=snd_chant_greece4_c_c
	break;
	case 19://tahrir1
		voice_single=choose(snd_chant_tahrir1_s_1a,snd_chant_tahrir1_s_1b,snd_chant_tahrir1_s_1c,snd_chant_tahrir1_s_1d,snd_chant_tahrir1_s_2a,snd_chant_tahrir1_s_2b,snd_chant_tahrir1_s_2c,snd_chant_tahrir1_s_2d,snd_chant_tahrir1_s_3a,snd_chant_tahrir1_s_3b,snd_chant_tahrir1_s_3c,snd_chant_tahrir1_s_3d,snd_chant_tahrir1_s_4a,snd_chant_tahrir1_s_4b,snd_chant_tahrir1_s_4c,snd_chant_tahrir1_s_4d,snd_chant_tahrir1_s_5a,snd_chant_tahrir1_s_5b,snd_chant_tahrir1_s_5c,snd_chant_tahrir1_s_5d);
		voice_crowd1=choose(snd_chant_tahrir1_c_a,snd_chant_tahrir1_c_b,snd_chant_tahrir1_c_c,snd_chant_tahrir1_c_d);
		voice_crowd2=choose(snd_chant_tahrir1_c_a,snd_chant_tahrir1_c_b,snd_chant_tahrir1_c_c,snd_chant_tahrir1_c_d);
		voice_crowd3=choose(snd_chant_tahrir1_c_a,snd_chant_tahrir1_c_b,snd_chant_tahrir1_c_c,snd_chant_tahrir1_c_d);
	break;
	case 20://tahrir2
		voice_single=snd_chant_tahrir2_s_a;
		voice_crowd1=snd_chant_tahrir2_s_a;
		voice_crowd2=choose(snd_chant_tahrir2_c_a,snd_chant_tahrir2_c_b,snd_chant_tahrir2_c_c,snd_chant_tahrir2_c_d);
		voice_crowd3=choose(snd_chant_tahrir2_c_a,snd_chant_tahrir2_c_b,snd_chant_tahrir2_c_c,snd_chant_tahrir2_c_d);
	break;
	case 21://tahrir4
		voice_single=choose(snd_chant_tahrir4_c_a,snd_chant_tahrir4_c_b,snd_chant_tahrir4_c_c);
		voice_crowd1=snd_chant_tahrir4_c_a;
		voice_crowd2=snd_chant_tahrir4_c_b;
		voice_crowd3=snd_chant_tahrir4_c_c;
	break;
	default:
		voice_single=snd_null;
		voice_crowd1=snd_null;
		voice_crowd2=snd_null;
		voice_crowd3=snd_null;
	break;
}

if spark==true
{
	audio_play_sound(voice_crowd1,50,false);
	audio_sound_gain(voice_crowd1,global.audio_chants,0);
	audio_sound_pitch(voice_crowd1,pitch);
	alarm[1]=audio_sound_length(voice_crowd1)*2.5;
	
	if global.rebel_wall_density>10
	{
		audio_play_sound(voice_crowd1,50,false);
		audio_sound_gain(voice_crowd1,global.audio_chants,0);
		audio_sound_pitch(voice_crowd1,pitch);
	}
	if global.rebel_wall_density>=20
	{
		audio_play_sound(voice_crowd2,50,false);
		audio_sound_gain(voice_crowd2,global.audio_chants/1.5,0);
		audio_sound_pitch(voice_crowd2,pitch);
	}
	if global.rebel_wall_density>=30
	{
		audio_play_sound(voice_crowd3,50,false);
		audio_sound_gain(voice_crowd3,global.audio_chants/1.5,0);
		audio_sound_pitch(voice_crowd3,pitch);
	}
}
else
{
	audio_play_sound(voice_single,50,false);
	audio_sound_gain(voice_single,global.audio_chants/1.5,0);
	audio_sound_pitch(voice_single,pitch);
	spark=true;
	var chance=irandom_range(0,10);
	duration=room_speed*audio_sound_length(voice_single);
	if chance>=3 {alarm[0]=duration;}
	else {alarm[1]=duration*2.5;}
}