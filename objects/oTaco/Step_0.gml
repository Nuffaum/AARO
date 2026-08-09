if seg_player == true
{
	x = lerp(x, oPlayer.x - oPlayer.image_xscale * 10, .1);
	
	y = lerp(y, oPlayer.y - oPlayer.sprite_height / 2, .1);
	
	image_xscale = oPlayer.image_xscale;
}

if (global.sabe_dancar)
{
	instance_destroy();
}

interacao();