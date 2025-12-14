depth=global.depth_fgm3;
if global.night==true
{
//	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,make_color_rgb(220,211,179),.25);
	draw_sprite(spr_bg_tahrir3_fg_n,image_index,x,y);
}
else
{
	//draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,make_color_rgb(220,220,190),.666);
	draw_sprite(spr_bg_tahrir3_fg,image_index,x,y);
}