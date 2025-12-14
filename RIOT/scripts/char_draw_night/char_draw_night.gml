function char_draw_night(argument0, argument1) {
	var shadow=argument0;
	var offset=argument1;
	var posx=x;
	var posy=y+offset;
	//shadow
	//draw_sprite_ext(skin,image_index,posx,posy,dir*r_dir,global.shadow_height,global.shadow_rotation,c_black,global.shadow_density);

	//skin
	draw_sprite_ext(skin,image_index,posx,posy,dir*r_dir,1,0,night_color,shadow);
	////head
	//draw_sprite_ext(head,image_index,posx,posy,dir*r_dir,1,0,global.night_color,shadow);
	////body
	//draw_sprite_ext(body,image_index,posx,posy,dir*r_dir,1,0,global.night_color,shadow);
	////vest
	//draw_sprite_ext(vest,image_index,posx,posy,dir*r_dir,1,0,global.night_color,shadow);
	////pants
	//draw_sprite_ext(legs,image_index,posx,posy,dir*r_dir,1,0,global.night_color,shadow);
	////gear1
	//draw_sprite_ext(gear_1,image_index,posx,posy,dir*r_dir,1,0,global.night_color,shadow);
	////gear2
	//draw_sprite_ext(gear_2,image_index,posx,posy,dir*r_dir,1,0,global.night_color,shadow);
	////gear3
	//draw_sprite_ext(gear_3,image_index,posx,posy,dir*r_dir,1,0,global.night_color,shadow);


}
