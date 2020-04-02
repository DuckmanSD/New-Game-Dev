//keyboard input
hInput				= keyboard_check(vk_right) - keyboard_check(vk_left);
vInput				= keyboard_check(vk_down) - keyboard_check(vk_up);
input_left			= keyboard_check(vk_left);
input_right			= keyboard_check(vk_right);
input_up			= keyboard_check(vk_up);
input_down			= keyboard_check(vk_down);
input_jump			= keyboard_check(vk_space);
//input_jump_hold		= keyboard_check_pressed(vk_space);
shoot				= keyboard_check(vk_control);

// sanity check on if player is jumping or not, for jumping over objects and checking to see if 
// a blank tile is under the player on landing.  
if player.z > 0
{
	isJumping = true;
}else{
	isJumping = false;
}

//JUMP
if(z >0) 
	{
	moveZ -= grav;
	z += moveZ;
	//if(moveZ > 0 and !input_jump_hold) moveZ =0;
	}else 
		{
			z = 0;
			if(input_jump) //this is where the jump input is read <=======
				{	
					moveZ= jSpd;
					z = moveZ;
				}else moveZ = 0; 
			
		}
		
	
		///movement code with jump
		moveX = input_right - input_left;
		moveY = input_down -  input_up;
		x += moveX;
		y += moveY - moveZ;	
		
		//read input
if(hInput != 0 or vInput != 0)
	{
		//find direction and find vector to correct point 
		dir = point_direction(0,0,hInput, vInput);
		moveX = lengthdir_x(spd, dir);
		moveY = lengthdir_y(spd, dir);
		
		//set sprite in 8 directions
		switch(dir)
			{
				case 0: sprite_index = playerRight; break;
				case 45: sprite_index = playerUpRight; break;
				case 90: sprite_index = playerUp; break;
				case 135: sprite_index = playerUpLeft; break;
				case 180: sprite_index = playerLeft; break;
				case 225: sprite_index = playerDownLeft; break;
				case 270: sprite_index = playerDown; break;
				case 315: sprite_index = playerDownRight; break;
			}
	}else 
	{
		// stops constant walking
		image_index =0;
	}
	
	/*
	////  Shoot toward Mouse with independant movement
	
	///faces the mouse
	fireDirection=point_direction(x,y,mouse_x,mouse_y)
	image_angle=direction
	
	
	/// Checks mouse button then creates a bullet on the instances layer
	if mouse_check_button_pressed(mb_left)
	{
    var newbullet=instance_create_layer(x,y,"Instances",playerBullet);
    newbullet.direction=fireDirection
    newbullet.image_angle=fireDirection
    newbullet.speed=7 //adjust 7 accordingly
	}

	*/

	///Shoot native direction with no mouse

	///faces the mouse
	//fireDirection=point_direction(0,0,hInput, vInput);
	

	/// Checks mouse button then creates a bullet on the instances layer
if shoot 
	{
		
    var newbullet=instance_create_layer(x,y-9,"Instances",playerBullet);
    newbullet.direction=dir		
    newbullet.image_angle=dir	
    newbullet.speed=7 //adjust 7 accordingly
   }
	
	
