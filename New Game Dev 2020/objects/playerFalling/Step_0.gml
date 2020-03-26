/// @description Insert description here
// You can write your code in this editor
playerFalling.y++

if (playerFalling.y > 768)
	{
		instance_destroy(playerFalling);
		player.x = 353;
		player.y = 187;
		object_set_visible(player, true);
		
		
		
		
	}
	
