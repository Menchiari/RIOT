///@description Night toggle
if global.debug==true
{
	if keyboard_check(vk_control) {room_goto_next()}
	else {global.night=!global.night;}
}