//keyboard input
hInput = keyboard_check(vk_right) - keyboard_check(vk_left);
vInput = keyboard_check(vk_down) - keyboard_check(vk_up);
shoot = keyboard_check(vk_space);

//read input
if(hInput != 0 or vInput != 0)
	{
		//find direction and find vector to correct point 
		dir = point_direction(0,0,hInput, vInput);
		moveX = lengthdir_x(spd, dir);
		moveY = lengthdir_y(spd, dir);


		//actually move
		x += hInput * spd;
		y += vInput * spd;
		
		
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
		
		
	}
	
		
	
	else 
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
	fireDirection=point_direction(0,0,hInput, vInput)
	//image_angle=fireDirection
	
	
	/// Checks mouse button then creates a bullet on the instances layer
	
	if shoot 
	//if mouse_check_button_pressed(mb_left)
	{
    var newbullet=instance_create_layer(x,y-9,"Instances",playerBullet);
    newbullet.direction=fireDirection
    newbullet.image_angle=fireDirection
    newbullet.speed=7 //adjust 7 accordingly
   }
	
	
