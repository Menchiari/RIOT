pawn_type=0;
alarm[0]=1;
char_create_rebels(obj_pawn,obj_police_parent);

//physics
var fixture=physics_fixture_create();
physics_fixture_set_circle_shape(fixture,random_range(2,11));
physics_fixture_set_density(fixture,random_range(.3,.7));
physics_fixture_bind(fixture,self);

//optimization
max_rebels=global.max_rebels;
alarm[1]=irandom_range(10,50);//killer