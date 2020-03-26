//keyboard input
hInput = keyboard_check(vk_right) - keyboard_check(vk_left);
vInput = keyboard_check(vk_down) - keyboard_check(vk_up);



if(hInput != 0 or vInput != 0)
	{
		//find direction and find vector to correct point 
		dir = point_direction(0,0,hInput, vInput);
		moveX = lengthdir_x(spd, dir);
		moveY = lengthdir_y(spd, dir);


		//actually move
		x += hInput * spd;
		y += vInput * spd;
		
		//set sprite
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
			
		
	} else {
		image_index =0;
	}
	
