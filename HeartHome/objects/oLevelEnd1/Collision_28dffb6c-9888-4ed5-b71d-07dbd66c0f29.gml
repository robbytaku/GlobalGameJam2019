/// @description Move to next room

with (oPlayer)
{
	if (hascontrol)
	{
		hascontrol = false;
		DreamTransition(TRANS_MODED.GOTO,other.room_move);
	}
}