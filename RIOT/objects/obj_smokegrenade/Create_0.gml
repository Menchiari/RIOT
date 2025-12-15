sprite_index=choose(spr_ammo_branches,spr_ammo_bricks,spr_ammo_rocks);
image_index=irandom_range(0,image_number-1);
image_speed=0;
alpha=random_range(0.01,1);
start_x=x;
start_y=y;
end_x=x;
end_y=y;
draw_x=0;
draw_y=0;
velocity_x=10;
velocity_y=-10;
hardness=random_range(1.3,2.3);//low number bounces more - only >1
sliding_friction=.5;//the higher the number the less it slides
rotation=random_range(-50,50);
rotation_result=rotation;
duration=1000;
duration_init=duration;
velocity_sg=0;

alarm[0]=1;
chance=irandom_range(0,6);
chance_success=2;

//particle 1
part_system=part_system_create();
part_emitter=part_emitter_create(part_system);
part_type=part_type_create();
part_random=1;
part_system_depth(part_system,-y);
part_type_sprite(part_type,spr_fx_smoke,false,false,true);
part_type_alpha2(part_type,.6,0);
if global.night==true {part_type_color1(part_type,merge_color(c_white,global.night_color,global.rimlight_shadow_density));}
else {part_type_color1(part_type,c_white);}
part_type_life(part_type,duration/4,duration/10);
part_type_size(part_type,.1,.3,.005,.02);
part_type_gravity(part_type,random_range(.001,.002),random_range(60,20));
part_type_direction(part_type,-30,30,0.1,0.1);
//particle 2
part_system2=part_system_create();
part_emitter2=part_emitter_create(part_system2);
part_type2=part_type_create();
part_random2=1;
part_system_depth(part_system2,-y);
part_type_sprite(part_type2,spr_fx_smoke,false,false,true);
part_type_alpha3(part_type2,0,.03,0);
if global.night==true {part_type_color1(part_type2,merge_color(c_white,global.night_color,global.rimlight_shadow_density));}
else {part_type_color1(part_type2,c_white);}
part_type_life(part_type2,duration/2,duration/3);
part_type_size(part_type2,1,3,.005,.02);
part_type_gravity(part_type2,0,0);
part_type_direction(part_type2,-30,30,0.1,0.1);

///sound
gunshot=snd_sfx_shot_gunshot;
gunshot_echo=choose(snd_sfx_shot_raudi_openspace_01,snd_sfx_shot_raudi_openspace_02,snd_sfx_shot_raudi_openspace_03,snd_sfx_shot_raudi_openspace_04,snd_sfx_shot_raudi_openspace_05,snd_sfx_shot_raudi_openspace_06,snd_sfx_shot_raudi_openspace_07,snd_sfx_shot_raudi_openspace_08);
if room==rm_notav_extra2
|| room==rm_notav3
|| room==rm_indignados1
|| room==rm_indignados2
|| room==rm_indignados3
|| room==rm_indignados4
|| room==rm_keratea2
|| room==rm_tahrir1
|| room==rm_tahrir2
|| room==rm_tahrir3
|| room==rm_tahrir4
|| room==rm_tahrir5
|| room==rm_syntagma
|| room==rm_occupy
|| room==rm_ukraine
|| room==rm_taksim
|| room==rm_library
{gunshot_echo=choose(snd_sfx_shot_raudi_building_01,snd_sfx_shot_raudi_building_02,snd_sfx_shot_raudi_building_03,snd_sfx_shot_raudi_building_04,snd_sfx_shot_raudi_building_05,snd_sfx_shot_raudi_building_06,snd_sfx_shot_raudi_building_07,snd_sfx_shot_raudi_building_08,snd_sfx_shot_raudi_building_09);}
if chance>chance_success
{
	audio_play_sound_alt(gunshot,50,0,global.audio_shots,random_range(.9,1.1));
	audio_play_sound_alt(gunshot_echo,50,0,global.audio_shots,random_range(.9,1.1));
	var shake=instance_create_depth(0, 0, 0, obj_screenshake);
	shake.shake_amount = 2;
}