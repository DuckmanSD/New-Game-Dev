//ghost player object and throw this dummy down!
playerFalling.y=y+10;


if (playerFalling.y > 1000)
	{
		instance_destroy(playerFalling);
		player.x = 353;
		player.y = 187;
		
		player.depth = -10;
		
		
		
	}
	
