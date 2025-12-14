text_alpha+=.05;
if fade_alpha<0 {fade_alpha=0}
switch(fade)
{
	case 0://fade in
		fade_alpha-=.02;
		if fade_alpha<=0 {fade=1; section+=1; text_alpha=0;}
	break;
	case 1://do things
		if mouse_check_button(mb_any)
		{
			clicked=true;
		}
		else if mouse_check_button_released(mb_any)
		{
			section+=1;
			text_alpha=0;
			clicked=false;
		}
	break;
	case 2://fade out
		fade_alpha+=.02;
		if fade_alpha>=1 {room_goto(rm_cinematics_keratea1);}
	break;
}
switch(section)
{
	case 1:
		text="In 2010 the Greek government planned to build a junkyard 6Km from Keratea, a small town South-East of Athens. Unable to convince the town members, the government proceeded anyway.";
	break;
	case 2:
		text="On December of the same year the MAT police forces were sent directly to Keratea. The population took this as an explicit war declaration, and acted accordingly";
	break;
	case 3:
		text="Each single inhabitant - from the priests to the retirees - are now guerrilla warriors standing against the State.";
	break;
	case 4:
		text="";
		fade=2;
	break;
}