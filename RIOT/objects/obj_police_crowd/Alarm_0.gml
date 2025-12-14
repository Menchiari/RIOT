///@description Police Wall Unit Setup
scr_costumes_police();
//this is to avoid extra movement on wall
anim_idle=choose(anim.defense_idle,anim.defense_idle,anim.defense_idle,anim.defense_idle,anim.defense_idle,anim.defense_idle,anim.defense_idle,anim.defense_idle,anim.defense_idle,anim.defense_idle,anim.idle_radio,anim.idle,anim.idle,anim.idle,anim.idle,anim.idle,anim.idle,anim.idle,anim.idle,anim.idle_agitated,anim.idle_angry,anim.idle_handsinpocket,anim.idle_smoke);
anim_walk=anim.defense_walkfwd;
anim_walk_backwards=anim.defense_walkback;
anim_run=choose(anim.run,anim.run_charge);
anim_escape=choose(anim.run_escape,anim.run_panic);
anim_attack=choose(anim.defense_idle,anim.hit_scared,anim.idle);
anim_hurt=choose(anim.idle_bumped_left,anim.idle_bumped_right,anim.defense_idle,anim.defense_raise_idle,anim.defense_resist_loop,anim.idle_radio,anim.hit_back,anim.hit_front,anim.hit_front_face,anim.hit_front_stomach,anim.hit_scared);

if room=rm_occupy
{anim_idle=choose(anim.idle,anim.idle_agitated,anim.idle_angry,anim.idle_handsinpocket);}
if room=rm_korea
{
	anim_idle=choose(anim.defense_idle,anim.defense_idle,anim.defense_idle,anim.defense_idle,anim.defense_idle,anim.defense_idle,anim.defense_idle,anim.defense_idle,anim.defense_idle,anim.defense_idle,anim.defense_idle,anim.defense_idle,anim.defense_idle,anim.defense_idle,anim.defense_idle,anim.defense_idle,anim.defense_idle,anim.defense_idle,anim.defense_idle,anim.defense_idle,anim.idle_radio);
	anim_walk=anim.defense_walkfwd;
	anim_walk_backwards=anim.defense_walkback;
}
