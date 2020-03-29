/// @description  camera_zoom(view, desired_width, zoom_speed, min_width, max_width);
/// @param view
/// @param  desired_width
/// @param  zoom_speed
/// @param  min_width
/// @param  max_width

/*
 *
 * Copyright [2015] - Finn Rayment
 * THIS SOURCE IS PROTECTED BY THE 'NO LICENSE' LICENSE. FOR MORE INFORMATION, SEE
 * http://choosealicense.com/licenses/no-license/ 
 *
 */

/*
 * Moves the window to a specified location of the users display.
 * Note: Execution of this script every frame causes the display to be locked.
 */
 
/*
 * view - The camera specified to be tethered to the object.
 * desired_width - Desired width of the cameras display. (Note: Height is auto corrected)
 * zoom_speed - Desired speed in which the camera zooms.
 * min_width - Minimum width for the camera to zoom to.
 * max_width - Maximum width for the camera to zoom to.
 */
view = argument0;
desired_width = argument1;
zoom_speed = argument2;
min_width = argument3;
max_width = argument4;

// Calculates height variables from 'desired_width' and window width/height.
height_multiplier = __view_get( e__VW.WView, view ) / __view_get( e__VW.HView, view );
desired_height = desired_width / height_multiplier;
min_height = min_width / height_multiplier;
max_height = max_width / height_multiplier;

// Zooms the view in and out on the horizontal axis, based on user specifications.
if (__view_get( e__VW.WView, view ) < max_width && __view_get( e__VW.WView, view ) > min_width) {
    if (__view_get( e__VW.WView, view ) < desired_width) {
        __view_set( e__VW.WView, view, __view_get( e__VW.WView, view ) + (zoom_speed) );
    } else if (__view_get( e__VW.WView, view ) > desired_width) {
        __view_set( e__VW.WView, view, __view_get( e__VW.WView, view ) - (zoom_speed) );    
    }
}

// Zooms the view in and out on the vertical axis, based on user specifications.
if (__view_get( e__VW.HView, view ) < max_height && __view_get( e__VW.HView, view ) > min_height) {
    if (__view_get( e__VW.HView, view ) < desired_height) {
        __view_set( e__VW.HView, view, __view_get( e__VW.HView, view ) + ((zoom_speed / height_multiplier)) );
    } else if (__view_get( e__VW.HView, view ) > desired_height) {
        __view_set( e__VW.HView, view, __view_get( e__VW.HView, view ) - ((zoom_speed / height_multiplier)) );
    }
}

// Keeps the view from leaving the specified maximum range on the horizontal axis.
if (__view_get( e__VW.WView, view ) == max_width) {
    __view_set( e__VW.WView, view, max_width - 1 );
}

// Keeps the view from leaving the specified minimum range on the horizontal axis.
if (__view_get( e__VW.WView, view ) == min_width) {
    __view_set( e__VW.WView, view, min_width + 1 );
}

// Keeps the view from leaving the specified maximum range on the horizontal axis.
if (__view_get( e__VW.HView, view ) == max_height) {
    __view_set( e__VW.HView, view, max_height - (1 / height_multiplier) );
}

// Keeps the view from leaving the specified minimum range on the vertical axis.
if (__view_get( e__VW.HView, view ) == min_height) {
    __view_set( e__VW.HView, view, min_height + (1 / height_multiplier) );
}

/*
 * Example Usage:
 *
 * if (keyboard_check(vk_up)) {
 *      camera_zoom(0, view_wview[0] - 1, 1, 512, 1024);
 * }
 * if (keyboard_check(vk_down)) {
 *      camera_zoom(0, view_wview[0] + 1, 1, 512, 1024);
 * }
 */