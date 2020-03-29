/// @description Insert description here
// You can write your code in this editor
playerFalling.y++
playerShadow.depth =200;

if (playerFalling.y > 768)
	{
		instance_destroy(playerFalling);
		player.x = 353;
		player.y = 187;
		
		player.depth = -10;
		
		
		
	}
	
playerShadow.depth = -90