//Card
draw_self();
draw_sprite_ext(card, 0, x - 128, y, 1.125, 1.125, 0, c_white, image_alpha);

//Texto
draw_set_color(c_white);
draw_set_halign(fa_left)
draw_set_valign(fa_top);
draw_text_ext_colour(x - 80, y - 32, dialogo_display, 30, 508, cor, cor, cor, cor, 1);

//Nome
draw_set_halign(fa_center)
draw_set_valign(fa_top);
draw_text_ext_transformed_colour(x - 128, y + 32, nome, 30, 10000, 0.9, 0.9, image_angle, cor, cor, cor, cor, 1);