switch(choice)
{
	case 0:
	break;
	case 1:
		global.ai=false;
	break;
	case 2:
		global.ai=true;
		if mouse_x<room_width/3 {global.ai_faction=1;}
		else if mouse_x>room_width-room_width/3 {global.ai_faction=0;}
	break;
	default:
	break;
}
room_goto(choose(rm_notav1,rm_notav2,rm_notav3,rm_notav4));
//room_goto(rm_notav4);