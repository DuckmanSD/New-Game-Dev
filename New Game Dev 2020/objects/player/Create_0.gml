// Setting up player constants for now.  Spd is player speed 
/// Space Walk grav =.1, spd=20, jSpd =3
/// Action Platformer grav =.4, jSpd = 4, 



event_inherited();
grav = .4;							
spd=20;								//spd def 1		
image_speed=.4;						//def .4
player.isJumping = false;			// sets the inital state for the jump system
moveZ = 0;
moveX = 0;
moveY = 0;
jSpd = 4;							// jump speed, velocity when starting to jump
z=0;
gamepad_set_axis_deadzone(0,.3);
playerisfalling = false;