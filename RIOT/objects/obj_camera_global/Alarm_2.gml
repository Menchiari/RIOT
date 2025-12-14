/// @description crowd
alarm[2]=crowd_sound_check_sec;

crowd_sound_angry_volume=(instance_number(obj_dummy)/500)*global.audio_crowd_angry;
audio_sound_gain(crowd_sound_angry,crowd_sound_angry_volume,crowd_sound_check_sec*1000);