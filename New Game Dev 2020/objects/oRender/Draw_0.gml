/// draw the grid		
///Variable setup

var tileData, screenX, screenY, tileIndex, tileZ, adjustZ;

//traversing the grid and putting it in the DSgrid

for (var tX = 0; tX < MAP_W; tX++)
{	
	for (var tY = 0; tY < MAP_H; tY++)
	{
		tileData = global.theMap[# tX, tY];
		screenX = TileToScreenX(tX, tY);
		screenY = TileToScreenY(tX, tY);
		
//after getting the screen position from the map this banks the sprite referenced and the z of the tile

		tileIndex = tileData[TILE.SPRITE];
		tileZ = tileData[TILE.Z];
		
// set the z for each tile specifically		
		if (tileIndex = 3)
				{
				 tileZ = 15;
				} 
		/// Checks player position to grid
		if (ScreenToTileX(player.x, player.y)==tX) && ((ScreenToTileY(player.x,player.y)== tY) )
		{
			
			if (tileZ != 0)
			{
//<>==========================//adjusts the player to the z of the different height platform
				//player.moveZ = tileZ;   creates a bouncy tile.   
				adjustZ = tileZ;
				player.moveZ -= adjustZ;
				
			}
			if (tileIndex = 0) && (player.isJumping = false)
					{
					instance_create_layer(player.x,player.y,"Instances",playerFalling);
					player.playerisfalling = true;
					/// moves player out of view so it can reset
					player.depth = 250;
					player.y = -100;
					}
		
			
			
			
			
			
			
				
				
		}
		
		/// Draws the map
		if (tileIndex != 0) draw_sprite(sStatic, tileIndex-1, screenX, screenY + tileZ);
		
	}
}

