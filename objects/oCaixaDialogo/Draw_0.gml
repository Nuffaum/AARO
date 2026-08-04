draw_self();
draw_sprite_ext(sFaceCard, 0, x - 128, y, 1.125, 1.125, 0, c_white, image_alpha);

draw_set_color(c_white);
draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_text_ext(x - 80, y - 32, dialogo_display, 30, 508)