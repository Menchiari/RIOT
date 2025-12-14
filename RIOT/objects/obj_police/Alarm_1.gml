/// @description killer
if instance_number(obj_police)>max_police
{instance_destroy();}
alarm[1]=irandom_range(10,100);