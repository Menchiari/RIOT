///@param level_string
function scr_victory_achievements() {
	if global.ai_faction==1
	{
		//rebels//
		var level=argument[0]+"r"//"notav1r"
		var ach_text3_unlocked="CLEAR AREA WITHOUT ANY JOURNALISTS";
		var ach_text2_unlocked="CLEAR AREA UNDER 80 SEC";
		var ach_text1_unlocked="CLEAR AREA UNDER 2 MINUTES";
				
			//3 stars
			if (
			obj_camera_global.journalists_rebels==0 // 3 star achievement here
			|| ini_read_real("ACHIEVEMENTS",level+"_ach3",0)==1)
			&& ini_read_real("ACHIEVEMENTS",level+"_ach2",0)==1
			{
				instance_create(x,y,obj_gui_victory_stars);
				ach_color3=ach_color_active;
				ini_write_real("ACHIEVEMENTS",level+"_ach3",1);
				ach_timer=true;
			}
			//2 stars
			if (
			obj_camera_global.level_timer<room_speed*80 // 2 star achievement here
			|| ini_read_real("ACHIEVEMENTS",level+"_ach2",0)==1)
			&& ini_read_real("ACHIEVEMENTS",level+"_ach1",0)==1
			{
				instance_create(x,y,obj_gui_victory_stars);
				ach_color2=ach_color_active;
				ach_text3=ach_text3_unlocked;
				ini_write_real("ACHIEVEMENTS",level+"_ach2",1);
			}
			//1 star
			if (
			obj_camera_global.level_timer<room_speed*120 // 1 star achievement here
			|| ini_read_real("ACHIEVEMENTS",level+"_ach1",0)==1)
			{
				instance_create(x,y,obj_gui_victory_stars);
				ach_color1=ach_color_active;
				ach_text2=ach_text2_unlocked;
				ini_write_real("ACHIEVEMENTS",level+"_ach1",1);
			}
			ach_text1=ach_text1_unlocked;
	}
	else
	{
		//police//
		var level=argument[0]+"p"//"notav1p"
		var ach_text3_unlocked="CLEAR AREA WITHOUT ANY JOURNALISTS";
		var ach_text2_unlocked="CLEAR AREA UNDER 80 SEC";
		var ach_text1_unlocked="CLEAR AREA UNDER 2 MINUTES";
				
			//3 stars
			if (obj_camera_global.journalists_police==0 // 3 star achievement here
			|| ini_read_real("ACHIEVEMENTS",level+"_ach3",0)==1)
			&& ini_read_real("ACHIEVEMENTS",level+"_ach2",0)==1
			{
				instance_create(x,y,obj_gui_victory_stars);
				ach_color3=ach_color_active;
				ini_write_real("ACHIEVEMENTS",level+"_ach3",1);
				ach_timer=true;
			}
			//2 stars
			if (obj_camera_global.level_timer<room_speed*80 // 2 star achievement here
			|| ini_read_real("ACHIEVEMENTS",level+"_ach2",0)==1)
			&& ini_read_real("ACHIEVEMENTS",level+"_ach1",0)==1
			{
				instance_create(x,y,obj_gui_victory_stars);
				ach_color2=ach_color_active;
				ach_text3=ach_text3_unlocked;
				ini_write_real("ACHIEVEMENTS",level+"_ach2",1);
			}
			//1 star
			if obj_camera_global.level_timer<room_speed*120 // 1 star achievement here
			|| ini_read_real("ACHIEVEMENTS",level+"_ach1",0)==1
			{
				instance_create(x,y,obj_gui_victory_stars);
				ach_color1=ach_color_active;
				ach_text2=ach_text2_unlocked;
				ini_write_real("ACHIEVEMENTS",level+"_ach1",1);
			}
			ach_text1=ach_text1_unlocked;
	}
	//////////////////////////////////////////////////////////////////////////////////////


}
