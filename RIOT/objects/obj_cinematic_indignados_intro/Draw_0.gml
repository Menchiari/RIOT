/// @description
var click_color=c_white;
var txt_height=16;
var txt_width=300;
var txt_size=.8;
var txt_shadow=1.6;
var txt_posx=round(sprite_width/2);
var txt_posy=round(sprite_height/2);
var txt_color=make_colour_rgb(240,239,204)

if clicked==false {draw_sprite(sprite_index,image_index,x,y);}
else {draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,click_color,1);}

draw_set_font(fnt_munro);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);
draw_text_ext_transformed_color(x+txt_posx,y+txt_posy+txt_shadow,text,txt_height,txt_width,txt_size,txt_size,0,0,0,0,0,text_alpha);
draw_text_ext_transformed_color(x+txt_posx,y+txt_posy-txt_shadow,text,txt_height,txt_width,txt_size,txt_size,0,0,0,0,0,text_alpha);
draw_text_ext_transformed_color(x+txt_posx+txt_shadow,y+txt_posy,text,txt_height,txt_width,txt_size,txt_size,0,0,0,0,0,text_alpha);
draw_text_ext_transformed_color(x+txt_posx-txt_shadow,y+txt_posy,text,txt_height,txt_width,txt_size,txt_size,0,0,0,0,0,text_alpha);
draw_text_ext_transformed_color(x+txt_posx-txt_shadow,y+txt_posy+txt_shadow,text,txt_height,txt_width,txt_size,txt_size,0,0,0,0,0,text_alpha);
draw_text_ext_transformed_color(x+txt_posx-txt_shadow,y+txt_posy-txt_shadow,text,txt_height,txt_width,txt_size,txt_size,0,0,0,0,0,text_alpha);
draw_text_ext_transformed_color(x+txt_posx+txt_shadow,y+txt_posy+txt_shadow,text,txt_height,txt_width,txt_size,txt_size,0,0,0,0,0,text_alpha);
draw_text_ext_transformed_color(x+txt_posx+txt_shadow,y+txt_posy-txt_shadow,text,txt_height,txt_width,txt_size,txt_size,0,0,0,0,0,text_alpha);

draw_text_ext_transformed_color(x+txt_posx,y+txt_posy,text,txt_height,txt_width,txt_size,txt_size,0,txt_color,txt_color,txt_color,txt_color,text_alpha);

draw_sprite_ext(spr_black_screen,0,0,0,1,1,0,0,fade_alpha);