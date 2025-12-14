///@description Night toggle
if keyboard_check(vk_control) {room_goto_next()}
else {global.night=!global.night;}