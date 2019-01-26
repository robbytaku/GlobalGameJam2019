/// @description Draw white rectangle
if (mode != TRANS_MODED.OFF)
{
	draw_set_alpha(percent);
	draw_set_color(c_white);
	draw_rectangle(0,0,w,h,false);
}