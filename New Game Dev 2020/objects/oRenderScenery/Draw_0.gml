/// draw the grid		

///Variable setup
var tileDataScenery, sceneX, sceneY, tileIndexScenery, tileZScenery;

//traversing the grid and putting it in the DSgrid
for (var tX = 0; tX < MAP_W; tX++)
{	
	for (var tY = 0; tY < MAP_H; tY++)
	{
		tileDataScenery = global.theMapScenery[# tX, tY];
		sceneX = TileToScreenX(tX, tY);
		sceneY = TileToScreenY(tX, tY);
		//after getting the screen position from the map this banks the sprite referenced and the z of the tile
		tileIndexScenery = tileDataScenery[TILE.SPRITE];
		tileZScenery = tileDataScenery[TILE.Z];
		
		/// Checks player position to grid maybe use this for collison?
		//if (ScreenToTileX(player.x, player.y)==tX) && ((ScreenToTileY(player.x,player.y)== tY) )
		//{
			
				//if (tileIndex = !0)
				//{
				// Sets a lower dirt block to represent a step
				//tileIndex = 2;
				//tileZ += 3;
				//} 
			
			
		//}
		
		/// Draws the map
		if (tileIndexScenery != 0) draw_sprite(scenery, tileIndexScenery-1, sceneX, sceneY + 0);
		
	}
}

