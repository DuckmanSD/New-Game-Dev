// Setting up player constants for now.  Spd is player speed 
event_inherited();
grav = .6;
spd=1
image_speed=.4;
//instance_create_layer(player.x,player.y,"Instances", playerShadow);
moveZ = 0;
moveX = 0;
moveY = 0;
jSpd = 3;
z=0;
camera_initialise(0, 1024, 600, 1024, 600);
//camera_setposition(512, 384);
camera_center();
camera_lock(0, player);