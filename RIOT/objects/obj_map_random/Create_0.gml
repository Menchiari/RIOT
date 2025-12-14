switch(room)
{
	case rm_indignados_complete:
	spawn_room=instance_create(x,y,choose(obj_map_indignados3,obj_map_indignados4,obj_map_occupy));
	break;
	case rm_notav_complete:
	spawn_room=instance_create(x,y,choose(obj_map_notav1,obj_map_notav2,obj_map_notav3,obj_map_notav4,obj_map_extra1_bg,obj_map_extra2_bg));
	break;
	case rm_keratea_complete:
	spawn_room=instance_create(x,y,choose(obj_map_keratea1,obj_map_keratea2,obj_map_keratea3,obj_map_keratea4,obj_map_syntagma));
	break;
	case rm_tahrir_complete:
	spawn_room=instance_create(x,y,choose(obj_map_tahrir1,obj_map_tahrir2,obj_map_tahrir4,obj_map_library,obj_map_korea));
	break;
	case rm_random:
	spawn_room=instance_create(x,y,choose(obj_map_indignados3,obj_map_indignados4,obj_map_occupy,obj_map_notav1,obj_map_notav2,obj_map_notav3,obj_map_notav4,obj_map_extra1_bg,obj_map_extra2_bg,obj_map_keratea1,obj_map_keratea2,obj_map_keratea3,obj_map_keratea4,obj_map_syntagma,obj_map_tahrir1,obj_map_tahrir2,obj_map_tahrir4,obj_map_library,obj_map_korea));
	break;
	default:
	spawn_room=instance_create(x,y,obj_map_extra1_bg);
	break;
}

alarm[0]=1;

instance_create(random_range(150,200),random_range(250,350),obj_wall_rebels);
instance_create(random_range(600,650),random_range(250,350),obj_wall_police);

global.night=choose(0,1);