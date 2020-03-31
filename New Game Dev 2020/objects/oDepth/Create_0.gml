//This is the depth sorting object.  First we set visble to false, then
//we add all objects that need to be depth sorted to the child list
//it will disable the draw events on all objects then sort them from y 
//to develop fake depth.  then in object oDraw_Depth there is the sort and 
//draw portion of the engine.
visible = false; 