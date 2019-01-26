if (hascontrol)
{
	{
		//Get Player Input
		key_left = keyboard_check(vk_left) or keyboard_check(ord("A"));
		key_right = keyboard_check(vk_right) or keyboard_check(ord("D"));
		key_jump = keyboard_check_pressed(vk_space);
		key_interact = keyboard_check_pressed(ord("E"));

		if (key_left) or (key_right) or (key_jump) or (key_interact)
		{
			controller = 0;
		}

		if (abs(gamepad_axis_value(0,gp_axislh)) > 0.2)
		{
			key_left = abs(min(gamepad_axis_value(0,gp_axislh),0));
			key_right = max(gamepad_axis_value(0,gp_axislh),0);
			controller = 1;
		}
		
		if (gamepad_button_check(0,gp_padl))
		{
			key_left = 1;
			controller = 1;
		}
		
		if (gamepad_button_check(0,gp_padr))
		{
			key_right = 1;
			controller = 1;
		}

		if (gamepad_button_check_pressed(0,gp_face1))
		{
			key_jump = 1;
			controller = 1;
		}
		if (gamepad_button_check_pressed(0,gp_face3))
		{
			key_interact = 1;
			controller = 1;
		}
	}
}
else
{
	key_right = 0;
	key_left = 0;
	key_jump = 0;
	key_interact = 0;
}
//Calculate Movement
var move = key_right - key_left;

hsp = move * walksp;

vsp += grv;

if (place_meeting(x,y+1,oWall)) and (key_jump) 
{
	idletimer = 0;
	vsp = -6;
}

//Horizontal Collision
if (place_meeting(x+hsp,y,oWall))
{
	while (!place_meeting(x+sign(hsp),y,oWall))
	{
		x += sign(hsp);
	}
	hsp = 0;
}

x += hsp;

//Vertical Collision
if (place_meeting(x,y+vsp,oWall))
{
	while (!place_meeting(x,y+sign(vsp),oWall))
	{
		y += sign(vsp);
	}
	vsp = 0;
}

y += vsp;

//Animation
if (!place_meeting(x,y+1,oWall)) and (idletimer < 120)
{
	sprite_index = sPlayerA;
	image_speed = 0;
	if (sign(vsp) > 0) image_index = 1; else image_index = 0;
} 
else 
{
	image_speed = 1;
	if (hsp == 0) and (idletimer < 120)
	{
		sprite_index = sPlayer;
	}
	else
	{
		sprite_index = sPlayerR;
	}
}


if (hsp != 0) 
{
	idletimer = 0;
	image_xscale = sign(hsp);
}

idletimer++;
if (idletimer >= 120) 
{
	image_speed = 1;
	sprite_index = sPlayerI;
}

