if animated==true
{
	draw_sprite_ext(spr_bg_notav4_fg_n,image_index,x,y,1,1,0,c_white,night_alpha);	
	draw_sprite_ext(spr_bg_notav4_fg,image_index,x,y,1,1,0,c_white,day_alpha);
}
else
{
	if night==true
	{
		//draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,make_color_rgb(220,211,179),.25);
		draw_sprite(spr_bg_notav4_fg_n,image_index,x,y);
	}
	else
	{
		//draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,make_color_rgb(220,220,190),.666);
		draw_sprite(spr_bg_notav4_fg,image_index,x,y);
	}
}