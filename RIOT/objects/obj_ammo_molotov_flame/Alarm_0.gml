/// @description 
depth=-y;
if stage>6{image_index=irandom_range(0,image_number/2);}

switch(stage)
{
	case 0://blast
	audio_play_sound_alt(sound,10,false,volume,random_range(.7,1.3));
	audio_play_sound_alt(sound,10,false,volume,random_range(.7,1.3));
	audio_play_sound_alt(sound,10,false,volume,random_range(.7,1.3));
	audio_play_sound_alt(sound,10,false,volume,random_range(.7,1.3));
	sprite=sprite_blast;
	var molotov=instance_create(x+random_range(min_spread_x,max_spread_x),y+random_range(min_spread_y,max_spread_y),obj_ammo_molotov_flame);
	molotov.stage=irandom_range(1,3);
	stage=13;
	break;
	
	case 1://big flame to small
	sprite=spr_fx_molotov_fire_12;
	var molotov=instance_create(x+random_range(min_spread_x,max_spread_x),y+random_range(min_spread_y,max_spread_y),obj_ammo_molotov_flame);
	molotov.stage=irandom_range(2,4);
	stage=13;
	break;
	//////////////////////////////
	case 2:
	sprite=spr_fx_molotov_fire_11;
	var molotov=instance_create(x+random_range(min_spread_x,max_spread_x),y+random_range(min_spread_y,max_spread_y),obj_ammo_molotov_flame);
	molotov.stage=irandom_range(3,5);
	stage=13;
	break;
	//////////////////////////////
	case 3:
	sprite=spr_fx_molotov_fire_10;
	var molotov=instance_create(x+random_range(min_spread_x,max_spread_x),y+random_range(min_spread_y,max_spread_y),obj_ammo_molotov_flame);
	molotov.stage=irandom_range(4,6);
	stage=13;
	break;
	//////////////////////////////
	case 4:
	sprite=spr_fx_molotov_fire_09;
	repeat(density)
	{
		var molotov=instance_create(x+random_range(min_spread_x,max_spread_x),y+random_range(min_spread_y,max_spread_y),obj_ammo_molotov_flame);
		molotov.stage=irandom_range(5,7);
	}
	stage=13;
	break;
	//////////////////////////////
	case 5:
	sprite=spr_fx_molotov_fire_08;
	repeat(density)
	{
		var molotov=instance_create(x+random_range(min_spread_x,max_spread_x),y+random_range(min_spread_y,max_spread_y),obj_ammo_molotov_flame);
		molotov.stage=irandom_range(6,8);
	}
	stage=13;
	break;
	//////////////////////////////
	case 6:
	sprite=spr_fx_molotov_fire_07;
	repeat(density)
	{
		var molotov=instance_create(x+random_range(min_spread_x,max_spread_x),y+random_range(min_spread_y,max_spread_y),obj_ammo_molotov_flame);
		molotov.stage=irandom_range(7,9);
	}
	stage=13;
	break;
	//////////////////////////////
	case 7:
	sprite=spr_fx_molotov_fire_06;
	repeat(density)
	{
		var molotov=instance_create(x+random_range(min_spread_x,max_spread_x),y+random_range(min_spread_y,max_spread_y),obj_ammo_molotov_flame);
		molotov.stage=irandom_range(8,10);
	}
	stage=13;
	break;
	//////////////////////////////
	case 8:
	sprite=spr_fx_molotov_fire_05;
	repeat(density)
	{
		var molotov=instance_create(x+random_range(min_spread_x,max_spread_x),y+random_range(min_spread_y,max_spread_y),obj_ammo_molotov_flame);
		molotov.stage=irandom_range(9,11);
	}
	stage=13;
	break;
	//////////////////////////////
	case 9:
	sprite=spr_fx_molotov_fire_04;
	repeat(density)
	{
		var molotov=instance_create(x+random_range(min_spread_x,max_spread_x),y+random_range(min_spread_y,max_spread_y),obj_ammo_molotov_flame);
		molotov.stage=irandom_range(10,12);
	}
	stage=13;
	break;
	//////////////////////////////
	case 10:
	sprite=spr_fx_molotov_fire_03;
	repeat(density)
	{
		var molotov=instance_create(x+random_range(min_spread_x,max_spread_x),y+random_range(min_spread_y,max_spread_y),obj_ammo_molotov_flame);
		molotov.stage=irandom_range(11,13);
	}
	stage=13;
	break;
	//////////////////////////////
	case 11:
	sprite=spr_fx_molotov_fire_02;
	repeat(density)
	{
		var molotov=instance_create(x+random_range(min_spread_x,max_spread_x),y+random_range(min_spread_y,max_spread_y),obj_ammo_molotov_flame);
		molotov.stage=irandom_range(12,13);
	}
	stage=13;
	break;
	//////////////////////////////
	case 12:
	sprite=spr_fx_molotov_fire_01;
	repeat(density)
	{
		var molotov=instance_create(x+random_range(min_spread_x,max_spread_x),y+random_range(min_spread_y,max_spread_y),obj_ammo_molotov_flame);
		molotov.stage=irandom_range(12,13);
	}
	stage=13;
	break;
	//////////////////////////////
	case 13:
	break;
}