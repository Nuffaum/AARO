draw_self();

var inte	= (instance_place(x, y, oInteragiveis));
var cadeira	= (place_meeting(x, y, oCadeira)) or (place_meeting(x, y, oCadeiraChave));

if cadeira
{
	e_frame += sprite_get_speed(sE) / game_get_speed(gamespeed_fps);
	
	if (e_frame >= sprite_get_number(sE)) - 1
	{
	    e_frame = 0;
	}
	
	draw_sprite(sE, floor(e_frame), x, y - (sprite_height + sprite_get_height(sE) + 2));
}

if inte
{
	if inte.pd_int == true
	{
		e_frame += sprite_get_speed(sE) / game_get_speed(gamespeed_fps);
		
		if (e_frame >= sprite_get_number(sE)) - 1
		{
		    e_frame = 0;
		}
		
		draw_sprite(sE, floor(e_frame), x, y - (sprite_height + sprite_get_height(sE) + 2));
	}
}
