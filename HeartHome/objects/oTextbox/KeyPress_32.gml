if (page < array_length_1d(text)-1) 
{
	charCount = 0;
	page++;
}
else 
{
	oPlayer.hascontrol = true;
	DreamTransition(TRANS_MODED.NEXT);
	instance_destroy();
}