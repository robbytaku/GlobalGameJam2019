if (count == 0)
{ 
	draw_sprite(sprite1,0,0,0);
}
if (count == 1)
{
	draw_sprite(sprite2,0,0,0);
}
if (count == 2)
{
	draw_sprite(sprite3,0,0,0);
}

if (count >= 3)
{
	draw_sprite(sprite4,0,0,0);
	if (!instance_exists(oTextboxFace) and (count == 3))
	{
		alarm[0] = 2;
	}
}