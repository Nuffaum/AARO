if (audio_is_playing(sndAcerto))
{
	draw_sprite_ext(
		sAcertoErro,
		0,
		display_get_gui_width() / 2,
		display_get_gui_height() / 2,
		10, 10,
		0,
		c_white,
		1);
}

if (audio_is_playing(sndErro))
{
	draw_sprite_ext(
		sAcertoErro,
		1,
		display_get_gui_width() / 2,
		display_get_gui_height() / 2,
		10, 10,
		0,
		c_white,
		1);
}

if (!global.comecou and point_distance(x, y, xx, yy) <= 5 and control)
{
	timer -= 2;

    draw_set_halign(fa_middle);
    draw_set_valign(fa_center);

    if (timer > 0)
    {
		draw_set_colour(c_black);

		draw_text_transformed(
		    display_get_gui_width() / 2 + 10,
		    display_get_gui_height() / 2 + 10,
		    ceil(timer / 60),
		    10, 10, 0
		);

		draw_set_colour(c_white);

		draw_text_transformed(
		    display_get_gui_width() / 2,
		    display_get_gui_height() / 2,
		    ceil(timer / 60),
		    10, 10, 0
		);
		alarm[0] = 60;
    }
    else
    {
		draw_set_colour(c_black);

		draw_text_transformed(
		    display_get_gui_width() / 2 + 10,
		    100 + 10,
		    "DANCEM!",
		    10, 10, 0
		);

		draw_set_colour(c_white);
		
        draw_text_transformed(
            display_get_gui_width() / 2,
            100,
            "DANCEM!",
            10, 10, 0
        );
    }
}

if (global.comecou and control)
{
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	draw_text_transformed(display_get_gui_width() / 2, 30, $"{conta}/{2}", 10, 10, 0);
}