///@param x,y,speed
function move_to_point(argument0, argument1, argument2) {
	var dir = point_direction(x,y,argument0,argument1);
	x+=lengthdir_x(argument2,dir);
	y+=lengthdir_y(argument2,dir);


}
