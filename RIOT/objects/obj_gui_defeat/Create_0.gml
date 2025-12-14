sprite=spr_gui_story_defeat;
depth=global.depth_guim2;
image_alpha=0;

button_retry=instance_create(x,y,obj_gui_button);
with button_retry
{
	sprite=spr_gui_story_retry;
	target_room=room;
}
button_menu=instance_create(x,y,obj_gui_button);
with button_menu
{
	sprite=spr_gui_story_menu;
	target_room=rm_story;
}

instance_create(0,0,obj_gui_tvstatic);

//////////SOUND/////////
if global.ai_faction==0
{
	audio_play_sound(snd_music_victory_rebels,500,false);
	audio_sound_gain(snd_music_victory_rebels,global.audio_gui_endmatch,0);
}
else
{
	audio_play_sound(snd_music_victory_police,500,false);
	audio_sound_gain(snd_music_victory_police,global.audio_gui_endmatch,0);
}