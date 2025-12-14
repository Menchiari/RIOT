if hp<9 {if instance_exists(crowd_5) crowd_5.panic=true;};
if hp<7 {if instance_exists(crowd_4) crowd_4.panic=true;};
if hp<5 {if instance_exists(crowd_3) crowd_3.panic=true;};
if hp<3 {if instance_exists(crowd_2) crowd_2.panic=true;};
if hp<=0
{
	if instance_exists(crowd_1) crowd_1.panic=true;
	instance_destroy();
	global.police_defeat=true;
}

/////////

if collision_circle(x,y,50,obj_dummy,false,true)
{
	if instance_exists(crowd_1){crowd_1.x=x;}
	if instance_exists(crowd_1){crowd_1.y=y;}
	if instance_exists(crowd_2){crowd_2.x=x;}
	if instance_exists(crowd_2){crowd_2.y=y;}
	if instance_exists(crowd_3){crowd_3.x=x;}
	if instance_exists(crowd_3){crowd_3.y=y;}
	if instance_exists(crowd_4){crowd_4.x=x;}
	if instance_exists(crowd_4){crowd_4.y=y;}
	if instance_exists(crowd_5){crowd_5.x=x;}
	if instance_exists(crowd_5){crowd_5.y=y;}
}
else
{
	if instance_exists(crowd_1){crowd_1.x=crowd_1.start_x;}
	if instance_exists(crowd_1){crowd_1.y=crowd_1.start_y;}
	if instance_exists(crowd_2){crowd_2.x=crowd_2.start_x;}
	if instance_exists(crowd_2){crowd_2.y=crowd_2.start_y;}
	if instance_exists(crowd_3){crowd_3.x=crowd_3.start_x;}
	if instance_exists(crowd_3){crowd_3.y=crowd_3.start_y;}
	if instance_exists(crowd_4){crowd_4.x=crowd_4.start_x;}
	if instance_exists(crowd_4){crowd_4.y=crowd_4.start_y;}
	if instance_exists(crowd_5){crowd_5.x=crowd_5.start_x;}
	if instance_exists(crowd_5){crowd_5.y=crowd_5.start_y;}
}