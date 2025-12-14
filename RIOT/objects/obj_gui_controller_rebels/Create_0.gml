base_rebels=spr_gui_controller_base_rebels;
b1_rebels=spr_gui_controller_b1_rebels;
b2_rebels=spr_gui_controller_b2_rebels;
b3_rebels=spr_gui_controller_b3_rebels;
b4_rebels=spr_gui_controller_b4_rebels;

b1_rebels_active=0;
b2_rebels_active=0;
b3_rebels_active=0;
b4_rebels_active=0;

var x_rebels=50;//60;
var y1=125;//150;
var y2=205;//250;
var y3=285;//350;
var y4=380;//450;

b1_rebels_x=x+x_rebels;
b1_rebels_y=y+y1;
b2_rebels_x=x+x_rebels;
b2_rebels_y=y+y2;
b3_rebels_x=x+x_rebels;
b3_rebels_y=y+y3;
b4_rebels_x=x+x_rebels;
b4_rebels_y=y+y4;

xx=x;
yy=y;
range=40;//button range
spawn_min=y+sprite_height/2-100;
spawn_max=y+sprite_height/2+100;

///////////////////

points_per_second=global.points_per_second;
max_points=global.max_points;
points_rebels=global.initial_points;
points_journalist=global.cost_journalist;
points_slow=global.cost_slow;
points_fast=global.cost_fast;
points_ranged=global.cost_ranged;

locked_journalists=false;
locked_journalists_timer=global.locked_journalists_timer;

b1_rebels_locked=false;
b2_rebels_locked=false;
b3_rebels_locked=false;
b4_rebels_locked=false;

//AI//
ai=global.ai;
ai_faction=global.ai_faction;
ai_choice=0;//irandom_range(0,global.ai_choices);
ai_timer=random_range(global.ai_timer_min,global.ai_timer_max);
alarm[0]=ai_timer;
alarm[2]=3;