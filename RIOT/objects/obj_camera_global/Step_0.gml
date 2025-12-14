level_timer+=1;

switch(position)
{
	case 0:
	posx=start_x;
	posy=start_y;
	break;
	case 1:
	posx=start_x+10;
	posy=start_y;
	break;
	case 2:
	posx=start_x-10;
	posy=start_y;
	break;
	case 3:
	posx=start_x;
	posy=start_y+10;
	break;
	case 4:
	posx=start_x;
	posy=start_y-10;
	break;
	case 5:
	posx=start_x+10;
	posy=start_y-10;
	break;
	case 6:
	posx=start_x-10;
	posy=start_y+10;
	break;
}

//create dead person if too many people are around
if (instance_number(obj_police)>200 || instance_number(obj_dummy)>400)
&& death==false && death_check==true && instance_exists(obj_dummy)
{
	death_check=false;
	alarm[1]=violence_check;
	var chance=irandom_range(0,100);
	if chance<violence
	{
		instance_create(instance_nearest(x,y,obj_dummy).x,instance_nearest(x,y,obj_dummy).y,obj_dead);
		var repeatdeathchance=irandom_range(0,100);
		if repeatdeathchance<90	{death=true;}
	}
}