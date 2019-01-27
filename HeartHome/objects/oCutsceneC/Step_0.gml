if (keyboard_check_pressed(vk_space) or gamepad_button_check_pressed(0,gp_face1) or gamepad_button_check_pressed(4,gp_face1)) and !instance_exists(oTextboxFace)
{
	count++;
}