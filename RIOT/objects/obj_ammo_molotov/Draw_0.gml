var alpha_duration=1//(duration/(duration_init/alpha));
draw_sprite_ext(sprite_index,image_index,x+draw_x,y+1,image_xscale*size,image_yscale/2*size,1,c_black,global.shadow_density*alpha_duration);
draw_sprite_ext(sprite_index,image_index,x+draw_x,y+draw_y,image_xscale*size,image_yscale*size,image_angle+rotation_result,c_white,alpha_duration);
//night
if global.night==true
{
	draw_sprite_ext(sprite_index,image_index,x+draw_x,y+draw_y,image_xscale,image_yscale,image_angle+rotation_result,global.night_color,global.night_density*alpha_duration);
	draw_sprite_ext(sprite_index,image_index,x+draw_x,y+draw_y+1,image_xscale,image_yscale,image_angle+rotation_result,global.night_color,global.rimlight_shadow_density*alpha_duration);
}