depth=global.depth_menu_key;
color=c_white;
alpha=1;
image_speed=0;
audio_music_original=global.audio_music_original;

if global.audio_music_on==0
{
	image_index=1;
	if audio_is_playing(global.audio_music_menu_track) {audio_sound_gain(global.audio_music_menu_track,0,0);}
}
else
{
	image_index=0;
	if audio_is_playing(global.audio_music_menu_track) {audio_sound_gain(global.audio_music_menu_track,global.audio_music_original,0);}
}