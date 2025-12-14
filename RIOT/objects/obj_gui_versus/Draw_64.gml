draw_sprite_ext(sprite,image_index,x,y,1,1,0,c_white,image_alpha);

if instance_exists(obj_camera_global)
{
	draw_rectangle_color(x+270,y+164,x+610,y+266,c_black,c_black,c_black,c_black,false);
	
	var spacing=16;
	var top_y=165;
	var txt_xscale=.75;
	var txt_yscale=.75;
	
	draw_set_font(fnt_munro)
	draw_set_valign(fa_top);
	draw_set_halign(fa_center);
	draw_text_ext_transformed_color(x+440,y+top_y,result_text_m,spacing,600,txt_xscale,txt_yscale,0,text_color,text_color,text_color,text_color,1);
	draw_set_halign(fa_right);
	draw_text_ext_transformed_color(x+430,y+top_y,result_text_mr,spacing,600,txt_xscale,txt_yscale,0,text_color,text_color,text_color,text_color,1);
	draw_set_halign(fa_left);
	draw_text_ext_transformed_color(x+450,y+top_y,result_text_mp,spacing,600,txt_xscale,txt_yscale,0,text_color,text_color,text_color,text_color,1);

	draw_set_halign(fa_left);
	draw_text_ext_transformed_color(x+275,y+top_y,result_text_r,spacing,600,txt_xscale,txt_yscale,0,text_color,text_color,text_color,text_color,1);
	draw_set_halign(fa_right);
	draw_text_ext_transformed_color(x+605,y+top_y,result_text_p,spacing,600,txt_xscale,txt_yscale,0,text_color,text_color,text_color,text_color,1);
}