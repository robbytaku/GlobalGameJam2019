if(keyboard_check_pressed(vk_escape) or gamepad_button_check_pressed(0,gp_start) or gamepad_button_check_pressed(4,gp_start))
{
    paused = !paused;
    if(!sprite_exists(screenShot))
	{
        screenShot = sprite_create_from_surface(application_surface,0,0,view_wport,view_hport,0,0,0,0);    
    }
}

if (paused)
{
    instance_deactivate_all(1);
	if (gamepad_button_check_pressed(0, gp_padu)) or (gamepad_button_check_pressed(0, gp_padd)) or (keyboard_check_pressed(ord("W"))) or (keyboard_check_pressed(ord("S")))
	{
		selected *= -1;
	}

	if ((abs(gamepad_axis_value(0,gp_axislv)) > 0.2) and axispressed == false)
	{
		axispressed = true;
		selected *= -1;
	}
	if ((abs(gamepad_axis_value(0,gp_axislv)) <= 0.2)) axispressed = false;

	if ((abs(gamepad_axis_value(4,gp_axislv)) > 0.2)) and axispressedgh == false
	{
		axispressedgh = true;
		selected *= -1;
	}
	if (abs((gamepad_axis_value(4,gp_axislv))) <= 0.2) axispressedgh = false

	if (gamepad_button_check_pressed(0,gp_face1) or keyboard_check_pressed(vk_space)) or (gamepad_button_check_pressed(4,gp_face1))
	{
		if (selected == 1)
		{
			paused = !paused;
		}
		else
		{
			paused = !paused;
			alarm[0] = 2;
		}
	}
}
else
{
    if(sprite_exists(screenShot))
	{
        sprite_delete(screenShot);
    }
    instance_activate_all();
}