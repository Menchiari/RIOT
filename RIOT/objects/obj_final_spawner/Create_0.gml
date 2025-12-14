faction=0;
if x>room_width/2 {faction=1};
alarm[0]=1;

time_min=1;
time_max=4;

spawn_timer=0;
active=true;

//STORY MODE//
if global.ai==true
{
	if (global.ai_faction==1 && global.police_defeat==true) //play as rebels and police loses
	|| (global.ai_faction==0 && global.rebels_defeat==true) //play as police and rebels lose
	{
		//Player Wins
		instance_create(0,0,obj_gui_victory);
	}
	else
	{
		//Player Loses
		instance_create(0,0,obj_gui_defeat);
	}
}

//VERSUS MODE//
else
{
	instance_create(0,0,obj_gui_versus);
}