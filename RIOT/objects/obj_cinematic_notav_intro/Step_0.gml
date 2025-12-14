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
		if fade_alpha>=1 {room_goto(rm_cinematics_notav1);}
	break;
}
switch(section)
{
	case 1:
		text="In the 90s Italy started building a train station in the Susa Valley to speed up the already existing connection between Susa and Lyon (TAV)";
	break;
	case 2:
		text="The project was expected to be concluded in 2035 and the estimated budget was over 25 billion dollars (funded by the European Union)";
	break;
	case 3:
		text="Documents also predicted that toxic chemicals would have been released from mountain drilling, polluting the whole region";
	break;
	case 4:
		text="Activists have been and are still fighting against the TAV project since 1992";
	break;
	case 5:
		text="";
		fade=2;
	break;
}