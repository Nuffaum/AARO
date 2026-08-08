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
//countdown
timer	= 180;//3 segundos
comecou = false;

//jogo em si
tipo_seta	= 0;//0 = caranguejo, 1 = Naira
dir_seta	= image_index;
alpha_nota	= 0;

///@function func_notas()
func_notas = function()
{
	dir_seta	= image_index;
	
	if comecou == true//começou o minigame
	{
		//if turno == 0
		{
			if tipo_seta == 0//se for a vez do caranguejo
			{
				
			}
		}
	}
	
	gpu_set_fog(true, -1, 0, 0);
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, -1, alpha_nota);
	gpu_set_fog(false, -1, 0, 0);
	
	alpha_nota = lerp(alpha_nota, 0, .2);
}