base_rebels=spr_gui_controller_base_rebels;
b1_rebels=spr_gui_controller_b1_rebels;
b2_rebels=spr_gui_controller_b2_rebels;
b3_rebels=spr_gui_controller_b3_rebels;
b4_rebels=spr_gui_controller_b4_rebels;

base_police=spr_gui_controller_base_police;
b1_police=spr_gui_controller_b1_police;
b2_police=spr_gui_controller_b2_police;
b3_police=spr_gui_controller_b3_police;
b4_police=spr_gui_controller_b4_police;

b1_rebels_active=0;
b2_rebels_active=0;
b3_rebels_active=0;
b4_rebels_active=0;

b1_police_active=0;
b2_police_active=0;
b3_police_active=0;
b4_police_active=0;

var x_rebels=50;//60;
var x_police=750;//900;
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

b1_police_x=x+x_police;
b1_police_y=y+y1;
b2_police_x=x+x_police;
b2_police_y=y+y2;
b3_police_x=x+x_police;
b3_police_y=y+y3;
b4_police_x=x+x_police;
b4_police_y=y+y4;

xx=x;
yy=y;
range=45;//button range
spawn_min=y+sprite_height/2-100;
spawn_max=y+sprite_height/2+100;

///////////////////

points_per_second=global.points_per_second;
max_points=global.max_points;

points_rebels=global.initial_points;
points_police=global.initial_points;

b1_rebels_locked=false;
b2_rebels_locked=false;
b3_rebels_locked=false;
b4_rebels_locked=false;

b1_police_locked=false;
b2_police_locked=false;
b3_police_locked=false;
b4_police_locked=false;

