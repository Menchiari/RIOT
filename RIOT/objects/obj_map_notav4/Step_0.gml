if night==true
{
	bg=bg_night;
}
else
{
	bg=bg_day;
}

if bg_animated==true {bg_animated_alpha+=1/(room_speed*163);}