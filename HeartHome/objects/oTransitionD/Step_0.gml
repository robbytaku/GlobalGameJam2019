/// @description Progress the transition

if (mode != TRANS_MODED.OFF)
{
	if (mode == TRANS_MODED.INTRO)
	{
		percent -= 0.02;
	}
	else
	{
		percent += 0.02;
	}
	
	if (percent == 1.1) or (percent == 0)
	{
		switch(mode)
		{
			case TRANS_MODED.INTRO:
			{
				mode = TRANS_MODED.OFF;
				break;
			}
			case TRANS_MODED.NEXT:
			{
				mode = TRANS_MODED.INTRO;
				room_goto_next();
				break;
			}
			case TRANS_MODED.GOTO:
			{
				mode = TRANS_MODED.INTRO;
				room_goto(target);
				break;
			}
			
			case TRANS_MODED.RESTART:
			{
				game_restart();
				break;
			}

		}
	}
}
