/// build map	

/// hide layer in code so you can work with it

layer_set_visible("Map", false);

///create ds map of the width and height

global.theMap = ds_grid_create(MAP_W, MAP_H);

///get software id of the map

var tileMap = layer_tilemap_get_id("Map");


///looping through whole grid block by block and 
///banking the data in the ds map

for (var tX = 0; tX < MAP_W; tX++)
{	
	for (var tY = 0; tY < MAP_H; tY++)
		{
			var tileMapData = tilemap_get(tileMap, tX, tY);
			//Format: [Sprite, Z]
			var thisTile = [-1,0];
			thisTile[TILE.SPRITE] = tileMapData;
			thisTile[TILE.Z] = 0;
			global.theMap[# tX, tY] = thisTile;
		
		}
		
}
	