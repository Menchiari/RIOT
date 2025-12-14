if global.police_defeat==false && global.rebels_defeat==false
{
	depth=global.depth_gui;
	draw_sprite_ext(base_rebels,image_index,x,y,1,1,0,c_white,1);
	draw_sprite_ext(b1_rebels,image_index,x,y,1,1,0,c_white,b1_rebels_active);
	draw_sprite_ext(b2_rebels,image_index,x,y,1,1,0,c_white,b2_rebels_active);
	draw_sprite_ext(b3_rebels,image_index,x,y,1,1,0,c_white,b3_rebels_active);
	draw_sprite_ext(b4_rebels,image_index,x,y,1,1,0,c_white,b4_rebels_active);

	draw_sprite_ext(base_police,image_index,x,y,1,1,0,c_white,1);
	draw_sprite_ext(b1_police,image_index,x,y,1,1,0,c_white,b1_police_active);
	draw_sprite_ext(b2_police,image_index,x,y,1,1,0,c_white,b2_police_active);
	draw_sprite_ext(b3_police,image_index,x,y,1,1,0,c_white,b3_police_active);
	draw_sprite_ext(b4_police,image_index,x,y,1,1,0,c_white,b4_police_active);

	//locked
	if b1_rebels_locked==true {draw_sprite_ext(b1_rebels,image_index,x,y,1,1,0,c_white,.5);}
	if b2_rebels_locked==true {draw_sprite_ext(b2_rebels,image_index,x,y,1,1,0,c_white,.5);}
	if b3_rebels_locked==true {draw_sprite_ext(b3_rebels,image_index,x,y,1,1,0,c_white,.5);}
	if b4_rebels_locked==true {draw_sprite_ext(b4_rebels,image_index,x,y,1,1,0,c_white,.5);}

	if b1_police_locked==true {draw_sprite_ext(b1_police,image_index,x,y,1,1,0,c_white,.5);}
	if b2_police_locked==true {draw_sprite_ext(b2_police,image_index,x,y,1,1,0,c_white,.5);}
	if b3_police_locked==true {draw_sprite_ext(b3_police,image_index,x,y,1,1,0,c_white,.5);}
	if b4_police_locked==true {draw_sprite_ext(b4_police,image_index,x,y,1,1,0,c_white,.5);}

	//points
	draw_set_font(fnt_munro);
	draw_set_valign(fa_bottom);

	draw_set_halign(fa_left);
	draw_text_color(x+30/*65*/,y+45,string(round(points_rebels*10)),c_red,c_red,c_red,c_red,1);
	draw_text_color(x+30/*65*/,y+46,string(round(points_rebels*10)),0,0,0,0,1);
	draw_set_halign(fa_left);
	draw_text_color(x+735,y+45,string(round(points_police*10)),c_blue,c_blue,c_blue,c_blue,1);
	draw_text_color(x+735,y+46,string(round(points_police*10)),0,0,0,0,1);
}