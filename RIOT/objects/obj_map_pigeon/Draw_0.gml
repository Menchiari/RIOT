draw_sprite_ext(sprite,image_index,x,start_y,dir,-.3,0,0,alpha);
draw_sprite_ext(sprite,image_index,x,y,dir,1,0,c_white,1);
if night==true {draw_sprite_ext(sprite,image_index,x,y+1,dir,1,0,merge_color(night_color,c_white,night_density),1);}