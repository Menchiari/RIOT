//check every frame
if global.police_defeat==true || global.rebels_defeat==true {reset_timer-=1}
if reset_timer<=0 room_restart();