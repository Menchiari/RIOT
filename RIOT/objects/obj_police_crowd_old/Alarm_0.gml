///@description Unit Setup
anim_idle=choose(anim.idle,anim.idle_agitated,anim.idle_angry,anim.idle_handsinpocket,anim.idle_smoke);
anim_walk=choose(anim.walk_forward,anim.walk_angry,anim.walk_boss);
anim_walk_backwards=anim.walk_backwards;
anim_run=choose(anim.run,anim.run_charge);
anim_escape=choose(anim.run_escape,anim.run_panic);
anim_attack=choose(anim.idle_bumped_left,anim.idle_bumped_right,anim.defense_idle,anim.idle_radio,anim.hit_back,anim.hit_front,anim.hit_front_face,anim.hit_front_stomach,anim.hit_scared);