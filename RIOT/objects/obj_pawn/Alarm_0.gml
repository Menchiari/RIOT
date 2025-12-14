//pawn_type=0//0=melee; 1=ranged; 2=journalists; 3=peaceful;
//cost=10;//balancing in Alarm 0
if pawn_type==0 //melee
{
	alert_range=global.range_melee_alert;
	attack_range=global.range_melee;
}
if pawn_type==1 //ranged
{
	alert_range=global.range_ranged_alert;
	attack_range=global.range_ranged;
}
if pawn_type==2 //journalist
{
	alert_range=global.range_journalists_alert;
	attack_range=global.range_journalists;
}
if pawn_type==3 //peaceful
{
}

//pawns
var offset;
if x<room_width/2 {offset=-150}
else {offset=150}
pawn_1=instance_create(x,y,obj_pawn_target);
pawn_2=instance_create(x,y,obj_pawn_target);
pawn_3=instance_create(x,y,obj_pawn_target);
pawn_4=instance_create(x,y,obj_pawn_target);
//pawn_5=instance_create(x,y,obj_pawn_target);
//pawn_6=instance_create(x,y,obj_pawn_target);

pawn_1.faction=faction;
pawn_2.faction=faction;
pawn_3.faction=faction;
pawn_4.faction=faction;
//pawn_5.faction=faction;
//pawn_6.faction=faction;

pawn_1.pawn_type=pawn_type;
pawn_2.pawn_type=pawn_type;
pawn_3.pawn_type=pawn_type;
pawn_4.pawn_type=pawn_type;
//pawn_5.pawn_type=pawn_type;
//pawn_6.pawn_type=pawn_type;

pawn_1.start_x=x+offset;
pawn_2.start_x=x+offset;
pawn_3.start_x=x+offset;
pawn_4.start_x=x+offset;
//pawn_5.start_x=x+offset;
//pawn_6.start_x=x+offset;

pawn_1.start_y=y+offset;
pawn_2.start_y=y+offset;
pawn_3.start_y=y+offset;
pawn_4.start_y=y+offset;
//pawn_5.start_y=y+offset;
//pawn_6.start_y=y+offset;

pawn_1.quantity=crowd_density;
pawn_2.quantity=crowd_density;
pawn_3.quantity=crowd_density;
pawn_4.quantity=crowd_density;
//pawn_5.quantity=crowd_density;
//pawn_6.quantity=crowd_density;

pawn_1.range=crowd_range;
pawn_2.range=crowd_range;
pawn_3.range=crowd_range;
pawn_4.range=crowd_range;
//pawn_5.range=crowd_range;
//pawn_6.range=crowd_range;