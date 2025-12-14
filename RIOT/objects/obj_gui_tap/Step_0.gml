if endframe()
|| global.rebels_defeat
|| global.police_defeat
|| (global.ai && global.ai_faction=0 && x<room_width/2)
|| (global.ai && global.ai_faction=1 && x>room_width/2)
{
	instance_destroy();
}