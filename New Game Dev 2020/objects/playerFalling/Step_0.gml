//ghost player object and throw this dummy down!
playerFalling.y++;
playerFalling.y++;

if (playerFalling.y > room_height)
	{
		instance_destroy(playerFalling);
		player.x = 353;
		player.y = 187;
		
		player.depth = -10;
		
		
		
	}
	
