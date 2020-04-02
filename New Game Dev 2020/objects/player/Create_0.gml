// Setting up player constants for now.  Spd is player speed 
event_inherited();
grav = .4;							//.4 is solid vg gravity .1 is space walk
spd=1								//spd def 1		
image_speed=.4;						//def .4
player.isJumping = false;			// sets the inital state for the jump system
moveZ = 0;
moveX = 0;
moveY = 0;
jSpd = 3;							// jump speed, velocity when starting to jump
z=0;
