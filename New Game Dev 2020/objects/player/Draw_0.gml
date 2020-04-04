///Draw Self and Shadow (shadow is tied to z height) 

draw_text(x-5, y-35, string(player.z));
draw_text(x-5, y-55, string(playerisfalling));
draw_sprite_ext(playerShadow,0,x+5,y+z,.5,.5,90,0,.5);
draw_self();
