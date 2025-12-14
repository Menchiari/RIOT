molotov_chance=0;
bomb_chance=0;
end_x=x;
end_y=y;
depth=-y;
switch(room)
{
	case rm_indignados1:
		molotov_chance=5;
		bomb_chance=5;
	break;
	case rm_indignados2:
		molotov_chance=0;
		bomb_chance=0.1;
	break;
	case rm_indignados3:
		molotov_chance=0;
		bomb_chance=0.05;
	break;
	case rm_indignados4:
		molotov_chance=0.5;
		bomb_chance=1;
	break;
	case rm_occupy:
		molotov_chance=0.01;
		bomb_chance=0.5;
	break;
	case rm_ukraine:
		molotov_chance=10;
		bomb_chance=15;
	break;
	
	case rm_notav1:
		bomb_chance=.5;
	break;	
	case rm_notav2:
		bomb_chance=1;
	break;
	case rm_notav3:
		molotov_chance=0.01;
		bomb_chance=2;
	break;
	case rm_notav4:
		molotov_chance=0.01;
		bomb_chance=5;
	break;
	case rm_notav_extra1:
		bomb_chance=2;
	break;
	case rm_notav_extra2:
		molotov_chance=4;
		bomb_chance=6;
	break;
	case rm_keratea1:
		molotov_chance=6;
		bomb_chance=2;
	break;
	case rm_keratea2:
		molotov_chance=4;
		bomb_chance=3;
	break;
	case rm_keratea3:
		molotov_chance=.5;
		bomb_chance=15;
	break;
	case rm_keratea4:
		molotov_chance=1;
		bomb_chance=10;
	break;
	case rm_taksim:
		bomb_chance=2;
	break;
	case rm_syntagma:
		molotov_chance=5;
		bomb_chance=5;
	break;
	case rm_tahrir1:
		molotov_chance=0;
		bomb_chance=1;
	break;
	case rm_tahrir2:
		molotov_chance=0;
		bomb_chance=2;
	break;
	case rm_tahrir3:
		molotov_chance=3;
		bomb_chance=3;
	break;
	case rm_tahrir4:
		molotov_chance=10;
		bomb_chance=10;
	break;
	case rm_tahrir5:
		molotov_chance=15;
		bomb_chance=15;
	break;
	case rm_library:
		molotov_chance=6;
		bomb_chance=6;
	break;
	case rm_korea:
		molotov_chance=10;
		bomb_chance=10;
	break;
	default:
		molotov_chance=random_range(0,12);
		bomb_chance=random_range(0,12);
	break;
}

alarm[0]=1;