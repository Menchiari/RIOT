/// @description 
sound=snd_sfx_shot_gunshot;
volume=global.audio_bomb;
pitch_size=random_range(.1,.4);
audio_play_sound_alt(sound,10,false,volume,pitch_size);

dir=1;
density=irandom_range(1,3);
sprite=spr_fx_smoke_impact;
sprite_render=choose(-1,1);
sprite_dust=spr_fx_smoke_impact;
sprite_dust_render=choose(-1,1);

scale1=random_range(1,1.5);
scale2=random_range(1,1.5);
scale3=random_range(1,1.5);
scale4=random_range(1,1.5);
rot1=random_range(-8,8);
rot2=random_range(-8,8);
rot3=random_range(-8,8);
rot4=random_range(-8,8);

blast=choose(spr_fx_smoke,spr_fx_smoke,spr_fx_smoke,spr_fx_smoke,spr_fx_smoke,spr_fx_smoke,spr_fx_smoke,spr_fx_smoke,spr_fx_smoke,spr_fx_smoke,spr_fx_smoke,spr_fx_molotov_impact_3);
blast_alpha=.6;
blast_scalex=random_range(.75,3);
blast_scaley=random_range(.75,3);

image_index=irandom_range(1,3);

//bomb blast
alarm[0]=3;