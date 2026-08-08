image_xscale = 2;
image_yscale = 2;
seta = image_index;

e_frame = 10;
frame = 0;
sprite_id = sNairaDancaI;

left = keyboard_check(vk_left) or keyboard_check(ord("A"));
down = keyboard_check(vk_down) or keyboard_check(ord("S"));
up = keyboard_check(vk_up) or keyboard_check(ord("W"));
right = keyboard_check(vk_right) or keyboard_check(ord("D"));

chart = global.Chart1;

tempo_inicio = current_time;
tempo = tempo_inicio - current_time;

nota = chart[0];