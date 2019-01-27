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
	if (transition == false)
	{
		transition = true;
		DreamTransition(TRANS_MODED.GOTO,rCredits);
	}

}