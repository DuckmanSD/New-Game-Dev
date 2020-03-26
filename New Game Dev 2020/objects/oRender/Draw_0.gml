/// draw the grid		

var tileData, screenX, screenY, tileIndex, tileZ;

for (var tX = 0; tX < MAP_W; tX++)
{	
	for (var tY = 0; tY < MAP_H; tY++)
	{
		tileData = global.theMap[# tX, tY];
		screenX = TileToScreenX(tX, tY);
		screenY = TileToScreenY(tX, tY);
		
		tileIndex = tileData[TILE.SPRITE];
		tileZ = tileData[TILE.Z];
		
		/// Checks player position to grid
		if (ScreenToTileX(player.x, player.y)==tX) && ((ScreenToTileY(player.x,player.y)== tY) )
		{
			
			// Checks to see if you are on the map
			
			if (tileIndex = !0)
			{
				// Sets a lower dirt block to represent a step
				tileIndex = 2;
				tileZ += 3;
			} 
				if (tileIndex = 0)
				{
					/// creates falling player at point of failure
					instance_create_layer(player.x,player.y,"Instances",playerFalling);
					
					
					
				}
			
			
			
			
			
			
			
		}
		
		/// Draws the map
		if (tileIndex != 0) draw_sprite(sStatic, tileIndex-1, screenX, screenY + tileZ);
		
	}
}

