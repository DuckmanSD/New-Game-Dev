/// @description Insert description here
// You can write your code in this editor
  if (keyboard_check(vk_numpad1)) {
       camera_zoom(0, view_wview[0], 10,  128, 1024);
  }
  if (keyboard_check(vk_numpad2)) {
       camera_zoom(0, view_wview[0], -10,  128, 1024);
  }
