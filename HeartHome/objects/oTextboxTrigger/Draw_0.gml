draw_sprite(sTrigger,1,x,y);
if (place_meeting(x,y,oPlayer))
{
	draw_sprite(sX,1,x,y-64);
	if(keyboard_check_pressed(ord("E")) and (!instance_exists(oTextbox)))
	{
		instance_create_layer(x,y,"Bullets",oTextbox);
	}
	
}