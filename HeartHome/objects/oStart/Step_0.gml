if (selected = 1)
{
	image_xscale = 1.2;
	image_yscale = 1.2;
}
else
{
	image_xscale = 1;
	image_yscale = 1;
}

if (gamepad_button_check_pressed(0, gp_padu)) or (gamepad_button_check_pressed(0, gp_padd)) or (keyboard_check_pressed(ord("W"))) or (keyboard_check_pressed(ord("S")))
{
	selected *= -1;
	oExit.selected *= -1;
}