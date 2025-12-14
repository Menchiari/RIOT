depth=-y;
if global.night==true
{
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,make_color_rgb(220,211,179),.25);
}
else
{
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,make_color_rgb(220,220,190),.666);
}