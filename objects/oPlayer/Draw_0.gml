draw_self();

if (place_meeting(x, y, oDialogos))
{
	e_frame += sprite_get_speed(sE);
	
	if (e_frame >= sprite_get_number(sE))
	{
	    e_frame = 0;
	}
	
	draw_sprite(sE, floor(e_frame), x, y - (sprite_height + sprite_get_height(sE)));
}