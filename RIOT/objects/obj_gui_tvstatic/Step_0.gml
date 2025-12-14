/// @description
depth=global.depth_guim3;
sprite_index=sprite;
if endframe() instance_destroy();

if global.police_defeat==false && global.rebels_defeat==false
{
	if alpha==0 {alpha=1}
	else {alpha-=.06;}
}
else
{
	if global.police_defeat==true
	{
		alpha=0.2;
		color=c_red;
		alpha-=.01
	}
	else if global.rebels_defeat==true
	{
		alpha=0.2;
		color=c_blue;
		alpha-=.01
	}
}