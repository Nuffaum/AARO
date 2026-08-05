draw_self();

if (place_meeting(x, y, oCadeira)) or (place_meeting(x, y, oInteragiveis))
{
	e_frame += sprite_get_speed(sE) / game_get_speed(gamespeed_fps);
	
	if (e_frame >= sprite_get_number(sE)) - 1
	{
	    e_frame = 0;
	}
	
	draw_sprite(sE, floor(e_frame), x, y - (sprite_height + sprite_get_height(sE) + 2));
}
