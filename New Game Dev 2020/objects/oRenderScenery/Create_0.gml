/// build map	

/// hide layer in code so you can work with it

layer_set_visible("Scenery", false);

///create ds map of the width and height

global.theMapScenery = ds_grid_create(MAP_W, MAP_H);

///get software id of the map

var tileMapScenery = layer_tilemap_get_id("Scenery");


///looping through whole grid block by block and 
///banking the data in the ds map

for (var tX = 0; tX < MAP_W; tX++)
{	
	for (var tY = 0; tY < MAP_H; tY++)
		{
			var tileMapDataScenery = tilemap_get(tileMapScenery, tX, tY);
			//Format: [Sprite, Z]
			var thisTileScenery = [-1,0];
			thisTileScenery[TILE.SPRITE] = tileMapDataScenery;
			thisTileScenery[TILE.Z] = 0;
			global.theMapScenery[# tX, tY] = thisTileScenery;
		
		}
		
}
	