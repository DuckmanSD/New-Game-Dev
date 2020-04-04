/// Debug viewer!!!!  

draw_text(x-5, y-35, string(player.z));				//checks the player z
//draw_text(x-5, y-55, string(playerisfalling));    //checks is falling variable




///Draw Self and Shadow (shadow is tied to z height) 
draw_sprite_ext(playerShadow,0,x+5,(y+1)+z,.5,.5,90,0,.5);
draw_self();
