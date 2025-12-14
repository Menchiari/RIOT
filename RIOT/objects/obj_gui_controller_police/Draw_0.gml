if global.police_defeat==false && global.rebels_defeat==false
{
	depth=global.depth_gui;
	//AI OFF
	if !(ai==true && ai_faction==1)
	{
		draw_sprite_ext(base_police,image_index,x,y,1,1,0,c_white,1);
		draw_sprite_ext(b1_police,image_index,x,y,1,1,0,c_white,b1_police_active);
		draw_sprite_ext(b2_police,image_index,x,y,1,1,0,c_white,b2_police_active);
		draw_sprite_ext(b3_police,image_index,x,y,1,1,0,c_white,b3_police_active);
		draw_sprite_ext(b4_police,image_index,x,y,1,1,0,c_white,b4_police_active);

		//locked
		if b1_police_locked==true {draw_sprite_ext(b1_police,image_index,x,y,1,1,0,c_white,.5);}
		if b2_police_locked==true {draw_sprite_ext(b2_police,image_index,x,y,1,1,0,c_white,.5);}
		if b3_police_locked==true {draw_sprite_ext(b3_police,image_index,x,y,1,1,0,c_white,.5);}
		if b4_police_locked==true {draw_sprite_ext(b4_police,image_index,x,y,1,1,0,c_white,.5);}

		//points
		draw_set_font(fnt_munro);
		draw_set_valign(fa_bottom);

		draw_set_halign(fa_left);
		draw_text_color(x+735,y+45,string(round(points_police*10)),c_blue,c_blue,c_blue,c_blue,1);
		draw_text_color(x+735,y+46,string(round(points_police*10)),0,0,0,0,1);

		//cost per unit
		draw_set_halign(fa_left);
		//shadow
		if locked_journalists==false {draw_text_transformed_color(x+730,y+142+10+4+1,string(round(points_journalist*10)),.5,.5,0,c_black,c_black,c_black,c_black,.5);}
		else{draw_text_transformed_color(x+730,y+142+10+4+1,"Reporting...",.5,.5,0,c_black,c_black,c_black,c_black,.5);}
		draw_text_transformed_color(x+730,y+225+10+4+1,string(round(points_slow*10)),.5,.5,0,c_black,c_black,c_black,c_black,.5);
		draw_text_transformed_color(x+730,y+307+10+4+1,string(round(points_fast*10)),.5,.5,0,c_black,c_black,c_black,c_black,.5);
		draw_text_transformed_color(x+730,y+398+10+4+1,string(round(points_ranged*10)),.5,.5,0,c_black,c_black,c_black,c_black,.5);
		//text
		var text_color_gui=make_color_rgb(90,120,255);
		if locked_journalists==false {draw_text_transformed_color(x+730,y+142+10+4,string(round(points_journalist*10)),.5,.5,0,text_color_gui,text_color_gui,text_color_gui,text_color_gui,.7);}
		else {draw_text_transformed_color(x+730,y+142+10+4,"Reporting...",.5,.5,0,text_color_gui,text_color_gui,text_color_gui,text_color_gui,.7);}
		draw_text_transformed_color(x+730,y+225+10+4,string(round(points_slow*10)),.5,.5,0,text_color_gui,text_color_gui,text_color_gui,text_color_gui,.7);
		draw_text_transformed_color(x+730,y+307+10+4,string(round(points_fast*10)),.5,.5,0,text_color_gui,text_color_gui,text_color_gui,text_color_gui,.7);
		draw_text_transformed_color(x+730,y+398+10+4,string(round(points_ranged*10)),.5,.5,0,text_color_gui,text_color_gui,text_color_gui,text_color_gui,.7);
	}
	//AI ON
	else
	{
		if !instance_exists(obj_spectator)
		{
			//points
			draw_set_font(fnt_munro);
			draw_set_valign(fa_bottom);
			draw_set_halign(fa_left);
			draw_text_color(x+735,y+46,string(round(points_police*10)),0,0,0,0,1);
		}
	}
}