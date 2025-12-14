/// @description 
draw_sprite_ext(blast,image_index,x,y,blast_scalex,1,image_angle,c_white,blast_alpha);
draw_sprite_ext(blast,image_index,x,y,1,blast_scaley,image_angle,c_white,blast_alpha);
var smoke_divider=6;
draw_sprite_ext(sprite,image_index,x,y,sprite_render*scale1,image_yscale*scale1,image_angle+rot1,c_white,1/smoke_divider);
draw_sprite_ext(sprite_dust,image_index,x,y,sprite_dust_render*scale2,image_yscale*scale2,image_angle+rot2,c_white,1/smoke_divider);
draw_sprite_ext(sprite_dust,image_index,x,y,-sprite_dust_render*scale3,image_yscale*scale3,image_angle+rot3,c_white,1/smoke_divider);
draw_sprite_ext(sprite_dust,image_index,x,y,sprite_dust_render*scale3,image_yscale*scale3,image_angle+rot3,c_white,1/smoke_divider);
draw_sprite_ext(sprite_dust,image_index,x,y,-sprite_dust_render*scale4,image_yscale*scale4,image_angle+rot4,c_white,1/smoke_divider);