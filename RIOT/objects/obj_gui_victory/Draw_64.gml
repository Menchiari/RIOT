draw_sprite_ext(sprite,image_index,x,y,1,1,0,c_white,image_alpha);

draw_set_font(fnt_munro);
draw_set_valign(fa_middle);
draw_set_halign(fa_left);
var txt_x=345;
var txt_y1=165;
var txt_y2=200;
var txt_y3=235;
draw_text_color(x+txt_x,y+txt_y1,ach_text1,ach_color1,ach_color1,ach_color1,ach_color1,1);
draw_text_color(x+txt_x,y+txt_y2,ach_text2,ach_color2,ach_color2,ach_color2,ach_color2,1);
draw_text_color(x+txt_x,y+txt_y3,ach_text3,ach_color3,ach_color3,ach_color3,ach_color3,1);

if ach_timer==true
{
	var bx1=223;
	var by1=347;
	var bx2=655;
	var by2=366;
	draw_rectangle_color(x+bx1,y+by1,x+bx2,y+by2,c_black,c_black,c_dkgray,c_dkgray,false);
	draw_set_font(fnt_munro);
	draw_set_valign(fa_middle);
	draw_set_halign(fa_center);
	draw_text_color(x+((bx1+bx2)/2),y+((by1+by2)/2),"CURRENT TIME: "+string(this_time/room_speed)+" SEC   -   "+"BEST TIME: "+string(best_time/room_speed)+" SEC",best_time_color,best_time_color,best_time_color,best_time_color,best_time_alpha);
}