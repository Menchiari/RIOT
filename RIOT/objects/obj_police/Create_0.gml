pawn_type=0;
alarm[0]=1;
char_create_police(obj_pawn,obj_dummy_parent);

//optimization
max_police=global.max_police;
alarm[1]=irandom_range(10,50);//killer