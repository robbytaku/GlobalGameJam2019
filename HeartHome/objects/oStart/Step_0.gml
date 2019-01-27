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

if ((abs(gamepad_axis_value(0,gp_axislv)) > 0.2) and axispressed == false)
{
	axispressed = true;
	selected *= -1;
	oExit.selected *= -1;
}
if ((abs(gamepad_axis_value(0,gp_axislv)) <= 0.2)) axispressed = false;

if ((abs(gamepad_axis_value(4,gp_axislv)) > 0.2)) and axispressedgh == false
{
	axispressedgh = true;
	selected *= -1;
	oExit.selected *= -1;
}
if (abs((gamepad_axis_value(4,gp_axislv))) <= 0.2) axispressedgh = false

if (gamepad_button_check_pressed(0,gp_face1) or keyboard_check_pressed(vk_space)) or (gamepad_button_check_pressed(4,gp_face1))
{
	if (selected == 1)
	{
		DreamTransition(TRANS_MODED.NEXT);
	}
	else
	{
		game_end();
	}
}
