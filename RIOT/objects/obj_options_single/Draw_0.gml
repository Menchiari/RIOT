draw_sprite(sprite_index,image_index,x,y);
switch(choice)
{
	case 1:
		draw_sprite_ext(sprite_index,image_index,x,y+1,1,1,0,c_red,1);
	break;
	case 2:
		draw_sprite_ext(sprite_index,image_index,x,y-1,1,1,0,c_blue,1);
	break;
	default:
	break;
}