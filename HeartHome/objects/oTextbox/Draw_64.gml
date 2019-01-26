draw_sprite(sTextbox, 0, 960, 300);
draw_set_font(fSketch);
draw_set_color(c_white);
charCount++;
textPart = string_copy(text[page],1,charCount);
draw_text_ext(620, 180, textPart, 60, 700);

if gamepad_button_check_pressed(0,gp_face1)
{
	if (page < array_length_1d(text)-1) 
	{
		charCount = 0;
		page++;
	}
	else 
	{
		oPlayer.hascontrol = true;
		DreamTransition(TRANS_MODED.GOTO,target);
		instance_destroy();
	}
}