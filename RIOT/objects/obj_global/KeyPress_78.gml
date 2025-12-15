///@description Night toggle or Next room
if global.cheats==true
{
	if keyboard_check(vk_control) {room_goto_next()}
}
if !keyboard_check(vk_control) {global.night=!global.night;}