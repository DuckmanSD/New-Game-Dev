///this is because depthgrids don't get automatically cleaned.   This is only run
//when the object is destroyed.  This is to prevent a memory leak
ds_grid_destroy(ds_depthgrid);