draw_sprite_ext(sprite,image_index,x,y,dir,-.3,0,0,.1);
if night==true
{
	draw_sprite_ext(sprite,image_index,x,y,dir,1,rot,c_white,.5);
	draw_sprite_ext(sprite,image_index,x,y+1,dir,1,rot,merge_color(night_color,c_white,night_density),1);
}
else
{
	draw_sprite_ext(sprite,image_index,x,y,dir,1,rot,c_white,1);
}