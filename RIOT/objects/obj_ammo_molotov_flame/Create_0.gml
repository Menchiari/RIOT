/// @description 
sound=choose(snd_sfx_debris_bottle_01,snd_sfx_debris_bottle_02,snd_sfx_debris_bottle_03,snd_sfx_debris_bottle_04);
volume=global.audio_rocks;
image_speed=0.5

stage=0;
dir=1;

min_spread_x=-1*dir;
max_spread_x=10*dir;
min_spread_y=-5;
max_spread_y=5;

density=choose(1,2);//irandom_range(1,3);
sprite_blast=choose(spr_fx_molotov_impact_1,spr_fx_molotov_impact_2,spr_fx_molotov_impact_3,spr_fx_molotov_fire_12,spr_fx_molotov_fire_11,spr_fx_molotov_fire_10);
sprite=spr_fx_molotov_fire_01;
sprite_render=choose(-1,1);

alarm[0]=1;