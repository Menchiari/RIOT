/// @description 
if y<50 draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_white,.1);
else
{
	if (x>room_width/2)
	{
		draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_blue,.5);
	}
	if (x<room_width/2)
	{
		draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_red,.5);
	}
}