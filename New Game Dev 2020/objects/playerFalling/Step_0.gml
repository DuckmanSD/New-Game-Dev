//ghost player object and throw this dummy down!
playerFalling.y=y+20;


if (playerFalling.y > 1000)
	{
		instance_destroy(playerFalling);
		player.playerisfalling = false;
		player.x = stage1.startX;
		player.y = stage1.startY;
		
		player.depth = -10;
		
		
		
	}
	
