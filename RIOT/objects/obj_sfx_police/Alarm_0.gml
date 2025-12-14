/// @description Start Radio

if instance_exists(obj_camera_global) && instance_exists(obj_dummy) && instance_exists(obj_police)
&& instance_exists(obj_pawn_rebels) && instance_exists(obj_pawn_police)
{
	if obj_camera_global.level_timer>tired_time {switch_status="tired";}
	if (instance_number(obj_dummy)+instance_number(obj_police)>100) && instance_number(obj_pawn_rebels)>instance_number(obj_pawn_police) {switch_status="scared";}
	if (instance_number(obj_dummy)+instance_number(obj_police)>100) && instance_number(obj_pawn_rebels)<=instance_number(obj_pawn_police) {switch_status="angry";}
}

if instance_number(obj_sfx_police)==1
{
	switch(nation)
	{
		case "Italy":
		switch (character)
		{
			case 0:
				//LEO POLICE VOICE//
				voice=choose(snd_police_it_l1_calm_ok_01,snd_police_it_l1_calm_perfetto_01,snd_police_it_l1_calm_ricevuto_01,snd_police_it_l1_calm_ricevuto_02,snd_police_it_l1_calm_signorsi_01);
				//tired voices
				if switch_status=="tired" {voice=choose(snd_police_it_l1_tired_ok_01,snd_police_it_l1_tired_perfetto_01,snd_police_it_l1_tired_ricevuto_01,snd_police_it_l1_tired_ricevuto_02,snd_police_it_l1_tired_si_01);}
				//scared voices
				if switch_status=="scared" {voice=choose(snd_police_it_l1_scared_accordo_01,snd_police_it_l1_scared_ok_01,snd_police_it_l1_scared_ricevuto_01,snd_police_it_l1_scared_ricevuto_02,snd_police_it_l1_scared_si_01);}
				//angry voices
				if switch_status=="angry" {voice=choose(snd_police_it_l1_angry_ok_01,snd_police_it_l1_angry_ok_02,snd_police_it_l1_angry_perfetto_01,snd_police_it_l1_angry_ricevuto_01,snd_police_it_l1_angry_ricevuto_02,snd_police_it_l1_angry_sissignore_01);}
				var voice_length=audio_sound_length(voice);
				alarm[1]=room_speed*voice_length;//radio start
				alarm[2]=wait_time;//destroy instance
			break;
			case 1:
				//MATTIA POLICE VOICE//
				voice=choose(snd_police_it_m1_calm_ok_04,snd_police_it_m1_calm_perfetto_07,snd_police_it_m1_calm_perfetto_07,snd_police_it_m1_calm_ricevuto_09,snd_police_it_m1_calm_ricevuto_12,snd_police_it_m1_calm_subito_05);
				//tired voices
				if switch_status=="tired" {voice=choose(snd_police_it_l1_tired_ok_01,snd_police_it_l1_tired_perfetto_01,snd_police_it_l1_tired_ricevuto_01,snd_police_it_l1_tired_ricevuto_02,snd_police_it_l1_tired_si_01);}
				//scared voices
				if switch_status=="scared" {voice=choose(snd_police_it_m1_scared_ok_08,snd_police_it_m1_scared_ricevuto_04,snd_police_it_m1_scared_ricevuto_05,snd_police_it_m1_scared_si_05,snd_police_it_m1_scared_subito_01);}
				//angry voices
				if switch_status=="angry" {voice=choose(snd_police_it_m1_angry_ok_03,snd_police_it_m1_angry_ok_06,snd_police_it_m1_angry_perfetto_09,snd_police_it_m1_angry_ricevuto_08,snd_police_it_m1_angry_ricevuto_09,snd_police_it_m1_angry_si_04);}
				var voice_length=audio_sound_length(voice);
				alarm[1]=room_speed*voice_length;//radio start
				alarm[2]=wait_time;//destroy instance
			break;
			case 2:
				//MICHELE POLICE VOICE//
				voice=choose(snd_police_it_mk1_calm_ok_01,snd_police_it_mk1_calm_perfetto_01,snd_police_it_mk1_calm_ricevuto_01,snd_police_it_mk1_calm_ricevuto_02,snd_police_it_mk1_calm_sissignore_01);
				//tired voices
				if switch_status=="tired" {voice=choose(snd_police_it_mk1_tired_ok_01,snd_police_it_mk1_tired_perfetto_01,snd_police_it_mk1_tired_ricevuto_01,snd_police_it_mk1_tired_ricevuto_02,snd_police_it_mk1_tired_sissignore_01);}
				//scared voices
				if switch_status=="scared" {voice=choose(snd_police_it_mk1_scared_accordo_01,snd_police_it_mk1_scared_ok_01,snd_police_it_mk1_scared_ricevuto_01,snd_police_it_mk1_scared_ricevuto_02,snd_police_it_mk1_scared_sissignore_01);}
				//angry voices
				if switch_status=="angry" {voice=choose(snd_police_it_mk1_angry_andiamo_01,snd_police_it_mk1_angry_ok_01,snd_police_it_mk1_angry_ricevuto_01,snd_police_it_mk1_angry_ricevuto_02,snd_police_it_mk1_angry_si_01);}
				var voice_length=audio_sound_length(voice);
				alarm[1]=room_speed*voice_length;//radio start
				alarm[2]=wait_time;//destroy instance
			break;
			case 3:
				//TIZIANO POLICE VOICE//
				voice=choose(snd_police_it_tz_calm_01,snd_police_it_tz_calm_02,snd_police_it_tz_calm_03,snd_police_it_tz_calm_04,snd_police_it_tz_calm_05);
				//tired voices
				if switch_status=="tired" {voice=choose(snd_police_it_tz_tired_01,snd_police_it_tz_tired_02,snd_police_it_tz_tired_03,snd_police_it_tz_tired_04,snd_police_it_tz_tired_05,snd_police_it_tz_calm_01,snd_police_it_tz_calm_02,snd_police_it_tz_calm_03,snd_police_it_tz_calm_04,snd_police_it_tz_calm_05);}
				//scared voices
				if switch_status=="scared" {voice=choose(snd_police_it_tz_scared_01,snd_police_it_tz_scared_02,snd_police_it_tz_scared_03,snd_police_it_tz_scared_04,snd_police_it_tz_scared_05,snd_police_it_tz_scared_06,snd_police_it_tz_scared_07,snd_police_it_tz_scared_08);}
				//angry voices
				if switch_status=="angry" {voice=choose(snd_police_it_tz_angry_01,snd_police_it_tz_angry_02,snd_police_it_tz_angry_03,snd_police_it_tz_angry_04,snd_police_it_tz_angry_05,snd_police_it_tz_angry_06,snd_police_it_tz_angry_07);}
				var voice_length=audio_sound_length(voice);
				alarm[1]=room_speed*voice_length;//radio start
				alarm[2]=wait_time;//destroy instance
			break;
			default:
				alarm[1]=5;//radio start
				alarm[2]=wait_time;//destroy instance
			break;
		}
		break;
		
		default:
			alarm[1]=5;//radio start
			alarm[2]=wait_time;//destroy instance
		break;
		case "Spain":
			voice_pitch=random_range(.8,1.05);
			voice=choose(snd_police_sp_s1_calm_aramismo_01,snd_police_sp_s1_calm_confirmado_01,snd_police_sp_s1_calm_indignado_01,snd_police_sp_s1_calm_intendido_01,snd_police_sp_s1_calm_ok_01);
			//tired voices
			if switch_status=="tired" {voice=choose(snd_police_sp_s1_tired_intendido_01,snd_police_sp_s1_tired_ok_01,snd_police_sp_s1_tired_pestapesto_01,snd_police_sp_s1_tired_qualcosa_01,snd_police_sp_s1_tired_si_01);}
			//scared voices
			if switch_status=="scared" {voice=choose(snd_police_sp_s1_scared_abamismo_01,snd_police_sp_s1_scared_confirmado_01,snd_police_sp_s1_scared_dacordo_01,snd_police_sp_s1_scared_entendido_01,snd_police_sp_s1_scared_ok_01);}
			//angry voices
			if switch_status=="angry" {voice=choose(snd_police_sp_s1_angry_dacordo_01,snd_police_sp_s1_angry_entendido_01,snd_police_sp_s1_angry_ok_01,snd_police_sp_s1_angry_pestopesto_01,snd_police_sp_s1_angry_repido_01);}
			var voice_length=audio_sound_length(voice);
			alarm[1]=room_speed*voice_length;//radio start
			alarm[2]=wait_time;//destroy instance
		break;
		case "Greece":
			voice_pitch=random_range(.8,1.1);
			voice=choose(snd_police_gr_10,snd_police_gr_11,snd_police_gr_12,snd_police_gr_13,snd_police_gr_14,snd_police_gr_15,snd_police_gr_16,snd_police_gr_17);
			//tired voices
			if switch_status=="tired" {voice=choose(snd_police_gr_27,snd_police_gr_28,snd_police_gr_29,snd_police_gr_30,snd_police_gr_31);}
			//scared voices
			if switch_status=="scared" {voice=choose(snd_police_gr_18,snd_police_gr_19,snd_police_gr_20,snd_police_gr_21,snd_police_gr_22,snd_police_gr_23,snd_police_gr_24,snd_police_gr_25,snd_police_gr_26);}
			//angry voices
			if switch_status=="angry" {voice=choose(snd_police_gr_01,snd_police_gr_02,snd_police_gr_03,snd_police_gr_04,snd_police_gr_05,snd_police_gr_06,snd_police_gr_07,snd_police_gr_08,snd_police_gr_09);}
			var voice_length=audio_sound_length(voice);
			alarm[1]=room_speed*voice_length;//radio start
			alarm[2]=wait_time;//destroy instance
		break;
		case "Egypt":
			voice_pitch=random_range(.75,1);
			voice_volume=1.2;
			voice=choose(snd_police_eg_06,snd_police_eg_07,snd_police_eg_08,snd_police_eg_09,snd_police_eg_10);
			//tired voices
			if switch_status=="tired" {voice=choose(snd_police_eg_16,snd_police_eg_17,snd_police_eg_18,snd_police_eg_19,snd_police_eg_20);}
			//scared voices
			if switch_status=="scared" {voice=choose(snd_police_eg_11,snd_police_eg_12,snd_police_eg_13,snd_police_eg_14,snd_police_eg_15);}
			//angry voices
			if switch_status=="angry" {voice=choose(snd_police_eg_01,snd_police_eg_02,snd_police_eg_03,snd_police_eg_04,snd_police_eg_05);voice_volume=1.5;}
			var voice_length=audio_sound_length(voice);
			alarm[1]=room_speed*voice_length;//radio start
			alarm[2]=wait_time;//destroy instance
		break;
		case "Korea":
			voice=choose(snd_police_kr_s1_c1_01,snd_police_kr_s1_c2_01,snd_police_kr_s1_c2_02,snd_police_kr_s1_c3_01,snd_police_kr_s1_c4_01,snd_police_kr_s1_c5_01,snd_police_kr_s1_c5_02,snd_police_kr_s1_c5_03,snd_police_kr_s1_c6_01);
			//tired voices
			if switch_status=="tired" {voice=choose(snd_police_kr_s1_t1_01,snd_police_kr_s1_t2_01,snd_police_kr_s1_t2_02,snd_police_kr_s1_t3_01,snd_police_kr_s1_t3_01,snd_police_kr_s1_t4_01,snd_police_kr_s1_t5_01,snd_police_kr_s1_t6_01);}
			//scared voices
			if switch_status=="scared" {voice=choose(snd_police_kr_s1_s1_01,snd_police_kr_s1_s2_01,snd_police_kr_s1_s2_02,snd_police_kr_s1_s3_01,snd_police_kr_s1_s4_01,snd_police_kr_s1_s5_01,snd_police_kr_s1_s6_01);}
			//angry voices
			if switch_status=="angry" {voice=choose(snd_police_kr_s1_a2_01,snd_police_kr_s1_a2_02,snd_police_kr_s1_a3_01,snd_police_kr_s1_a4_01,snd_police_kr_s1_a5_01,snd_police_kr_s1_a5_02,snd_police_kr_s1_a6_01);}
			var voice_length=audio_sound_length(voice);
			alarm[1]=room_speed*voice_length;//radio start
			alarm[2]=wait_time;//destroy instance
		break;
		case "Turkey":
			voice_pitch=random_range(.8,1.05);
			voice=choose(snd_police_tk_e1_calm_ehman_01,snd_police_tk_e1_calm_evez_03,snd_police_tk_e1_calm_evez_04,snd_police_tk_e1_calm_mailuru_01,snd_police_tk_e1_calm_somethingtamam_02,snd_police_tk_e1_calm_tamam_01);
			//tired voices
			if switch_status=="tired" {voice=choose(snd_police_tk_e1_tired_ehvez_01,snd_police_tk_e1_tired_long_01,snd_police_tk_e1_tired_somethingtamam_01,snd_police_tk_e1_tired_tabikide_01,snd_police_tk_e1_tired_tamam_01);}
			//scared voices
			if switch_status=="scared" {voice=choose(snd_police_tk_e1_scared_ehman_01,snd_police_tk_e1_scared_ehvez_01,snd_police_tk_e1_scared_omainande_01,snd_police_tk_e1_scared_somethingtamam_01,snd_police_tk_e1_scared_tamam_01);}
			//angry voices
			if switch_status=="angry" {voice=choose(snd_police_tk_e1_angry_amndan_01,snd_police_tk_e1_angry_tabukyde_01,snd_police_tk_e1_angry_tamam_01,snd_police_tk_e1_angry_tavu_01,snd_police_tk_e1_angry_tsomethingamam_01);}
			var voice_length=audio_sound_length(voice);
			alarm[1]=room_speed*voice_length;//radio start
			alarm[2]=wait_time;//destroy instance
		break;
		case "USA":
		voice_pitch=random_range(.8,1.05);
		character=choose(0,1,1,1,2,2)
		switch(character)
		{
			case 0:
			//ANDREW POLICE VOICE//
				voice=choose(snd_police_us_calm_a1_04,snd_police_us_calm_a1_12,snd_police_us_calm_a1_27,snd_police_us_calm_a1_37,snd_police_us_calm_a1_52);
				//tired voices
				if switch_status=="tired" {voice=choose(snd_police_us_tired_a1_01,snd_police_us_tired_a1_09,snd_police_us_tired_a1_31,snd_police_us_tired_a1_40,snd_police_us_tired_a1_51);}
				//scared voices
				if switch_status=="scared" {voice=choose(snd_police_us_scared_a1_04,snd_police_us_scared_a1_11);}
				//angry voices
				if switch_status=="angry" {voice=choose(snd_police_us_angry_a1_01,snd_police_us_angry_a1_14,snd_police_us_angry_a1_27,snd_police_us_angry_a1_33,snd_police_us_angry_a1_40,snd_police_us_angry_a1_50,snd_police_us_angry_a1_56);}
				var voice_length=audio_sound_length(voice);
				alarm[1]=room_speed*voice_length;//radio start
				alarm[2]=wait_time;//destroy instance
			break;
			case 1:
			//LEONARD POLICE VOICE//
				voice=choose(snd_police_us_calm_l1_01,snd_police_us_calm_l1_07,snd_police_us_calm_l1_12,snd_police_us_calm_l1_19,snd_police_us_calm_l1_22,snd_police_us_calm_l1_38,snd_police_us_calm_l1_56,snd_police_us_calm_l1_65,snd_police_us_calm_l1_81,snd_police_us_calm_l1_87);
				//tired voices
				if switch_status=="tired" {voice=choose(snd_police_us_tired_l1_14,snd_police_us_tired_l1_25,snd_police_us_tired_l1_69,snd_police_us_tired_l1_76,snd_police_us_tired_l1_76,snd_police_us_tired_l1_90,snd_police_us_tired_l1_94,snd_police_us_tired_l1_95,snd_police_us_tired_l1_97,snd_police_us_tired_l1_98);}
				//scared voices
				if switch_status=="scared" {voice=choose(snd_police_us_scared_l1_03,snd_police_us_scared_l1_12,snd_police_us_scared_l1_16_,snd_police_us_scared_l1_43,snd_police_us_scared_l1_49,snd_police_us_scared_l1_72,snd_police_us_scared_l1_81,snd_police_us_scared_l1_82,snd_police_us_scared_l1_84,snd_police_us_scared_l1_87);}
				//angry voices
				if switch_status=="angry" {voice=choose(snd_police_us_angry_l1_04,snd_police_us_angry_l1_05,snd_police_us_angry_l1_05,snd_police_us_angry_l1_09,snd_police_us_angry_l1_100,snd_police_us_angry_l1_101,snd_police_us_angry_l1_104,snd_police_us_angry_l1_17,snd_police_us_angry_l1_26,snd_police_us_angry_l1_29,snd_police_us_angry_l1_38,snd_police_us_angry_l1_41,snd_police_us_angry_l1_42,snd_police_us_angry_l1_44,snd_police_us_angry_l1_49,snd_police_us_angry_l1_65,snd_police_us_angry_l1_66,snd_police_us_angry_l1_81,snd_police_us_angry_l1_82,snd_police_us_angry_l1_97);}
				var voice_length=audio_sound_length(voice);
				alarm[1]=room_speed*voice_length;//radio start
				alarm[2]=wait_time;//destroy instance
			break;
			case 2:
			//MATTHEW POLICE VOICE//
				voice=choose(snd_police_us_calm_m1_27,snd_police_us_calm_m1_48,snd_police_us_calm_m1_89);
				//tired voices
				if switch_status=="tired" {voice=choose(snd_police_us_tired_m1_06,snd_police_us_tired_m1_100,snd_police_us_tired_m1_107,snd_police_us_tired_m1_16,snd_police_us_tired_m1_24,snd_police_us_tired_m1_53);}
				//scared voices
				if switch_status=="scared" {voice=choose(snd_police_us_scared_m1_112,snd_police_us_scared_m1_25,snd_police_us_scared_m1_47,snd_police_us_scared_m1_56,snd_police_us_scared_m1_70);}
				//angry voices
				if switch_status=="angry" {voice=choose(snd_police_us_angry_m1_105,snd_police_us_angry_m1_12,snd_police_us_angry_m1_121,snd_police_us_angry_m1_16,snd_police_us_angry_m1_25,snd_police_us_angry_m1_32,snd_police_us_angry_m1_52,snd_police_us_angry_m1_79);}
				var voice_length=audio_sound_length(voice);
				alarm[1]=room_speed*voice_length;//radio start
				alarm[2]=wait_time;//destroy instance
			break;
		}
		break;
	}
	audio_play_sound(voice,100,false);
	audio_sound_gain(voice,global.audio_police_radio*voice_volume,0);
	audio_sound_pitch(voice,voice_pitch);
}
else
{
	instance_destroy();
}