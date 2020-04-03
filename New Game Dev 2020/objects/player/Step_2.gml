/// @description Insert description here
// You can write your code in this editor
if (tile_meeting(x,y,layer_tilemap_get_id("Scenery")))
	{
		draw_text(x, y-100, string("touching"));
	}