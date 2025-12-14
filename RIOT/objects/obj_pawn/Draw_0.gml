if global.debug==true
{
	var faction_color=c_white;
	if faction==0 {faction_color=c_red;}
	if faction==1 {faction_color=c_blue;}

	draw_circle_color(x,y,20,faction_color,faction_color,true);
	draw_circle_color(x,y,attack_range,faction_color,faction_color,true);
	//draw_circle_color(x,y,alert_range,c_white,c_white,true);
	draw_set_font(fnt_debug);
	draw_set_valign(fa_middle);
	draw_set_halign(fa_center);
	draw_text(x,y+10,string(hp));
	draw_text(x,y,state);
	draw_text(x,y-20,string(journalist_points));
}