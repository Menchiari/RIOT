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
		if fade_alpha>=1 {room_goto(rm_cinematics_tahrir1);}
	break;
}
switch(section)
{
	case 1:
		text="Egypt 2011: unemployment is high, and poverty is increasing every day.";
	break;
	case 2:
		text="After living for 30 years in a State of emergency, millions of protesters demand the overthrow of president Hosni Mubarak's Egyptian regime.";
	break;
	case 3:
		text="At least 846 Egyptians died in the three-week-long uprising depicted in the following event.";
	break;
	case 4:
		text="";
		fade=2;
	break;
}