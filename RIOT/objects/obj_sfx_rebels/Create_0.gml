//0=asaradura; 1=logica; 2=nopaura; 3=notav; 4=playmobil; 5=vittoria; 6=nomuos yankee; 7=nomuos abbusa
chant=0;//irandom_range(0,7)
voice_single=snd_null;
voice_crowd1=snd_null;
voice_crowd2=snd_null;
voice_crowd3=snd_null;
spark=false;
pitch=random_range(0.9,1.2);

duration=room_speed*random_range(10,30);

switch(room)
{
	case rm_notav1:					chant=choose(0,0,0,0,2,3,5)		break;
	case rm_notav2:					chant=choose(0,2,3,3,3,3,5)		break;
	case rm_notav3:					chant=choose(0,1,2,2,2,2,3,5)	break;
	case rm_notav4:					chant=choose(0,2,3,5,5,5,5)		break;
	case rm_notav_extra1:			chant=choose(1,6,6,7,7,7,8)		break;
	case rm_notav_extra2:			chant=choose(1,4,9,10)			break;
	case rm_indignados1:			chant=choose(-1)				break;
	case rm_indignados2:			chant=choose(11,12,13,14)		break;
	case rm_indignados3:			chant=choose(11,12,13,14)		break;
	case rm_indignados4:			chant=choose(11,12,13,14)		break;
	case rm_keratea1:				chant=choose(15,16,17,18)		break;
	case rm_keratea2:				chant=choose(15,16,17,18)		break;
	case rm_keratea3:				chant=choose(15,16,17,18)		break;
	case rm_keratea4:				chant=choose(15,16,17,18)		break;
	case rm_tahrir1:				chant=choose(19,20,21)			break;
	case rm_tahrir2:				chant=choose(19,20,21)			break;
	case rm_tahrir3:				chant=choose(19,20,21)			break;
	case rm_tahrir4:				chant=choose(19,20,21)			break;
	case rm_tahrir5:				chant=choose(19,20,21)			break;
	case rm_occupy:					chant=choose(8,8,8,8,8,8,13)	break;
	case rm_ukraine:				chant=choose(-1)				break;
	case rm_taksim:					chant=choose(-1)				break;
	case rm_syntagma:				chant=choose(-1,15,16,17,18)	break;
	case rm_library:				chant=choose(-1,19,20,21)		break;
	case rm_korea:					chant=choose(-1)				break;
	
	case rm_indignados_complete:	chant=choose(-1,11,12,13,14,8)		break;
	case rm_notav_complete:			chant=choose(-1,0,1,2,3,4,5,6,7,8)	break;
	case rm_keratea_complete:		chant=choose(-1,15,16,17,18)		break;
	case rm_tahrir_complete:		chant=choose(-1,19,20,21)			break;
	case rm_random:	chant=choose(-1,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21) break;
}

if instance_number(obj_sfx_rebels)>1 {instance_destroy();}
else {alarm[0]=1;}

//reduce amount
var randomkill = irandom_range(0,100);
if randomkill<55 instance_destroy(); //chances that the chorus will get destroyed