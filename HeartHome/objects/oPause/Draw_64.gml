draw_set_font(fSketch);
if (paused)
{
    draw_sprite_ext(screenShot,0,0,0,1,1,0,c_white,1);
	draw_set_halign(fa_center);
	draw_text(960,270,"PAUSED");
	draw_set_halign(fa_left);
	if (selected == 1)
	{
		draw_sprite(sResumeS,0,960,540);
		draw_sprite(sQuit,0,960,810);
	}
	else
	{
		draw_sprite(sResume,0,960,540);
		draw_sprite(sQuitS,0,960,810);
	}
    
}