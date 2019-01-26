draw_sprite(sprite,1,x,y);
if (place_meeting(x,y,oPlayer))
{
	if ((oPlayer.controller) == 0) draw_sprite(sE,1,x,y-64);
	if ((oPlayer.controller) == 1) draw_sprite(sX,1,x,y-64);
	if ((oPlayer.controller) == 2) draw_sprite(sOrange,1,x,y-64);
	
	if (oPlayer.key_interact and (!instance_exists(oTextbox)))
	{
		instance_create_layer(x,y,"Bullets",oTextbox);
	}
	
}