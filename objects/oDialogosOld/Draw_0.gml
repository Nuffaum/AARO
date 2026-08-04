///@description outline

var offset = 1;
var cor_outline = c_white;

if place_meeting(x, y, oPlayer)
{
	gpu_set_fog(true, cor_outline, 0, 0);
	draw_sprite_ext(sprite_index, image_index, x - offset, y, image_xscale, image_yscale, image_angle, cor_outline, image_alpha);
	draw_sprite_ext(sprite_index, image_index, x + offset, y, image_xscale, image_yscale, image_angle, cor_outline, image_alpha);
	draw_sprite_ext(sprite_index, image_index, x, y - offset, image_xscale, image_yscale, image_angle, cor_outline, image_alpha);
	draw_sprite_ext(sprite_index, image_index, x, y + offset, image_xscale, image_yscale, image_angle, cor_outline, image_alpha);
	gpu_set_fog(false, cor_outline, 0, 0);
}


draw_self();



