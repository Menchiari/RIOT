if bg_animated==true
{
	draw_sprite(bg_night,image_index,x,y);
	draw_sprite_ext(bg_day,image_index,x,y,1,1,0,c_white,bg_animated_alpha);
}
else {draw_sprite(bg,image_index,x,y);}