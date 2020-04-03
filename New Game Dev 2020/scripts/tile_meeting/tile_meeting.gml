
///@arg x
///@arg y
///@arg tilemap

var xx, yy, tilemap, xp, yp, meeting, layer_id;

xx = argument0;
yy = argument1;
tilemap = argument2;

//save our current position
xp = x;
yp = y;

//move to the position where we wanna check for a tile collision
x = xx;
y = yy;

 layer_id = layer_tilemap_get_id(tilemap);

//check for collision on all four corners of the collision mask
meeting =		tilemap_get_at_pixel(layer_id, bbox_right, bbox_top)
				||
				tilemap_get_at_pixel(layer_id, bbox_right, bbox_bottom)
				||
				tilemap_get_at_pixel(layer_id, bbox_left, bbox_top)
				||
				tilemap_get_at_pixel(layer_id, bbox_left, bbox_bottom);

//Move back to the original position
x = xp;
y = yp;

//Return wether or not there was a collision
return(meeting);