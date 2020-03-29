/// @description  camera_lock(view, obj);
/// @param view
/// @param  obj

/*
 *
 * Copyright [2015] - Finn Rayment
 * THIS SOURCE IS PROTECTED BY THE 'NO LICENSE' LICENSE. FOR MORE INFORMATION, SEE
 * http://choosealicense.com/licenses/no-license/ 
 *
 */

/*
 * Tethers the camera to follow an object smoothly.
 * This includes enabling and bordering the camera correctly.
 */

/*
 * view - The camera specified to be tethered to the object.
 * obj - The object to be followed by the view.
 */
view = argument0;
obj = argument1;

// Enables and makes the view visible.
view_enabled = true;
__view_set( e__VW.Visible, view, true );

// Smoothy tethers the camera with an ID of 'view' to 'obj'.
__view_set( e__VW.XView, view, __view_get( e__VW.XView, view ) + (((obj.x - (__view_get( e__VW.WView, view ) / 2) - __view_get( e__VW.XView, view )) * 0.1)) );
__view_set( e__VW.YView, view, __view_get( e__VW.YView, view ) + (((obj.y - (__view_get( e__VW.HView, view ) / 2) - __view_get( e__VW.YView, view )) * 0.1)) );

// Sets the horizontal and vertical borders to '0'.
// This allows for the camera to freely follow 'obj' without fixating to it.
__view_set( e__VW.HBorder, view, 0 );
__view_set( e__VW.VBorder, view, 0 );

// Locks onto, and follows 'obj' if it exists.
if (instance_exists(obj)) {
    __view_set( e__VW.Object, view, obj );
}

/*
 * Example Usage:
 *
 * camera_lock(0, obj_player);
 */