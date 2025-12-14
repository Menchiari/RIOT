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
		if fade_alpha>=1 {room_goto(rm_cinematics_indignados2);}
	break;
}
switch(section)
{
	case 1:
		text="In 2011, at the beginning of the European economical crisis, the Indignados movement started a series of peaceful protests against high unemployment rates, walfare cuts, capitalism, banks, and political corruption.";
	break;
	case 2:
		text="On May 15 2011, demonstrations from all across Spain peacefully reunited in Sol Square, Madrid, organizing everything entirely over the internet.";
	break;
	case 3:
		text="Nearly 8 million Spaniards partecipated in these events, capturing the attention all over the globe.";
	break;
	case 4:
		text="";
		fade=2;
	break;
}