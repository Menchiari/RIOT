init();
faction=choose(0,0,0,0,0,1);
pawn_type=irandom_range(0,3);
if faction==0 {scr_costumes_rebels();}
else {scr_costumes_police();}
image_speed=0;
image_index=choose(194,196,197,206,207,208,221,223,225,239,240,241);
image_index-=1;
depth=-y;

dir=1;
r_dir=1;
f_dir=1;