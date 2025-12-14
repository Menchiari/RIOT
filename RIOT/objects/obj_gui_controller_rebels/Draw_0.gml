if global.rebels_defeat==false && global.police_defeat==false
{
	depth=global.depth_gui
	//AI OFF
	if !(ai==true && ai_faction==0)
	{
		draw_sprite_ext(base_rebels,image_index,x,y,1,1,0,c_white,1);
		draw_sprite_ext(b1_rebels,image_index,x,y,1,1,0,c_white,b1_rebels_active);
		draw_sprite_ext(b2_rebels,image_index,x,y,1,1,0,c_white,b2_rebels_active);
		draw_sprite_ext(b3_rebels,image_index,x,y,1,1,0,c_white,b3_rebels_active);
		draw_sprite_ext(b4_rebels,image_index,x,y,1,1,0,c_white,b4_rebels_active);

		//locked
		if b1_rebels_locked==true {draw_sprite_ext(b1_rebels,image_index,x,y,1,1,0,c_white,.5);}
		if b2_rebels_locked==true {draw_sprite_ext(b2_rebels,image_index,x,y,1,1,0,c_white,.5);}
		if b3_rebels_locked==true {draw_sprite_ext(b3_rebels,image_index,x,y,1,1,0,c_white,.5);}
		if b4_rebels_locked==true {draw_sprite_ext(b4_rebels,image_index,x,y,1,1,0,c_white,.5);}

		//points
		draw_set_font(fnt_munro);
		draw_set_valign(fa_bottom);

		draw_set_halign(fa_left);
		draw_text_color(x+30/*65*/,y+45,string(round(points_rebels*10)),c_red,c_red,c_red,c_red,1);
		draw_text_color(x+30/*65*/,y+46,string(round(points_rebels*10)),0,0,0,0,1);
		
		//cost per unit
		draw_set_halign(fa_right);
		//shadow
		if locked_journalists=false {draw_text_transformed_color(x+46+22,y+142+10+4+1,string(round(points_journalist*10)),.5,.5,0,c_black,c_black,c_black,c_black,.5);}
		else {draw_text_transformed_color(x+46+22,y+142+10+4+1,"Tweeting...",.5,.5,0,c_black,c_black,c_black,c_black,.5);}
		draw_text_transformed_color(x+46+22,y+225+10+4+1,string(round(points_slow*10)),.5,.5,0,c_black,c_black,c_black,c_black,.5);
		draw_text_transformed_color(x+46+22,y+307+10+4+1,string(round(points_fast*10)),.5,.5,0,c_black,c_black,c_black,c_black,.5);
		draw_text_transformed_color(x+46+22,y+398+10+4+1,string(round(points_ranged*10)),.5,.5,0,c_black,c_black,c_black,c_black,.5);
		//text
		if locked_journalists=false {draw_text_transformed_color(x+46+22,y+142+10+4,string(points_journalist*10),.5,.5,0,c_red,c_red,c_red,c_red,.5);}
		else {draw_text_transformed_color(x+46+22,y+142+10+4,"Tweeting...",.5,.5,0,c_red,c_red,c_red,c_red,.5);}
		draw_text_transformed_color(x+46+22,y+225+10+4,string(round(points_slow*10)),.5,.5,0,c_red,c_red,c_red,c_red,.5);
		draw_text_transformed_color(x+46+22,y+307+10+4,string(round(points_fast*10)),.5,.5,0,c_red,c_red,c_red,c_red,.5);
		draw_text_transformed_color(x+46+22,y+398+10+4,string(round(points_ranged*10)),.5,.5,0,c_red,c_red,c_red,c_red,.5);
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
			draw_text_color(x+30/*65*/,y+46,string(round(points_rebels*10)),0,0,0,0,1);
		}
	}
}