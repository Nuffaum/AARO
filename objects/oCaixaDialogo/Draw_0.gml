//Card
draw_self();
draw_sprite_ext(card, 0, x - 112, y, 1, 1, 0, c_white, image_alpha);

//Texto
draw_set_font(fonte);
draw_set_color(c_white);
draw_set_halign(fa_left)
draw_set_valign(fa_top);
draw_text_ext_colour(x - 70, y - 32, dialogo_display, 15, 210, cor, cor, cor, cor, 1);

//Nome
var largura = string_width(nome) * 2.5 / 35;
draw_sprite_ext(sCaixaDialogo, 0, x - sprite_width/2, y + 35, largura, 1.3, image_angle, c_white, image_alpha)
draw_set_halign(fa_center)
draw_set_valign(fa_top);
draw_text_ext_transformed_colour(x - sprite_width/2, y + 30, nome, 30, 10000, 0.9, 0.9, image_angle, c_white, c_white, c_white, c_white, image_alpha);