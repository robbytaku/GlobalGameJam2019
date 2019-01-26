if (place_meeting(x + 50, y, oWall)) and (place_meeting(x,y+1,oWall)) vsp = -6;

vsp += grv;
//Horizontal Collision
if (place_meeting(x+hsp,y,oWall))
{
	while (!place_meeting(x+sign(hsp),y,oWall))
	{
		x += sign(hsp);
	}
	hsp = 0;
}
else hsp = walksp;
if (place_meeting(x,y,oFinish)) hsp = 0;
else hsp = walksp;

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
if (hsp != 0) 
{
	sprite_index = sPlayerR;
}
else sprite_index = sPlayer;