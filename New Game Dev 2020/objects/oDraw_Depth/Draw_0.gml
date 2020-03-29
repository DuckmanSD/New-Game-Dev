
///resize grid
var grid = ds_depthgrid
var inst_num = instance_number(oDepth);
ds_grid_resize(grid, 2, inst_num);

//add instance information to grid
var yy = 0 ; with(oDepth)
{
	grid[# 0, yy] = id;
	grid[# 1, yy] = y;
	yy++;
}

///sort grid in acending order

ds_grid_sort(grid,1,true);
var inst
yy = 0; repeat(inst_num)
{
 inst = grid[# 0,yy];
 
 with(inst)
	{
	event_perform(ev_draw,0);	
	}

yy++;	
}