function char_draw() {

	var posx=x//round(x);
	var posy=y//round(y);
	//shadow
	draw_sprite_ext(skin,image_index,posx,posy,dir*r_dir,shadow_height,shadow_rotation,c_black,shadow_density);

	//skin
	draw_sprite_ext(skin,image_index,posx,posy,dir*r_dir,1,0,skin_color,1);
	//head
	draw_sprite_ext(head,image_index,posx,posy,dir*r_dir,1,0,head_color,1);
	//body
	draw_sprite_ext(body,image_index,posx,posy,dir*r_dir,1,0,body_color,body_alpha);
	//pants
	draw_sprite_ext(legs,image_index,posx,posy,dir*r_dir,1,0,legs_color,legs_alpha);
	//vest
	draw_sprite_ext(vest,image_index,posx,posy,dir*r_dir,1,0,vest_color,vest_alpha);
	//gear1
	draw_sprite_ext(gear_1,image_index,posx,posy,dir*r_dir,1,0,gear_1_color,gear_1_alpha);
	//gear2
	draw_sprite_ext(gear_2,image_index,posx,posy,dir*r_dir,1,0,gear_2_color,gear_2_alpha);
	//gear3
	draw_sprite_ext(gear_3,image_index,posx,posy,dir*r_dir,1,0,gear_3_color,gear_3_alpha);

	//night
	if night==true
	{
		char_draw_night(rimlight_shadow_density,1);
		//char_draw_night(global.night_density,0);
	}


}
