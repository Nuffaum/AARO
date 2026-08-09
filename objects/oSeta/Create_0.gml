image_xscale = 2;
image_yscale = 2;
seta = image_index;

control = 0;

e_frame = 10;
frame = 0;
sprite_id = sNairaDancaI;

left = keyboard_check_pressed(vk_left) or keyboard_check_pressed(ord("A"));
down = keyboard_check_pressed(vk_down) or keyboard_check_pressed(ord("S"));
up = keyboard_check_pressed(vk_up) or keyboard_check_pressed(ord("W"));
right = keyboard_check_pressed(vk_right) or keyboard_check_pressed(ord("D"));

xx = 0;
yy = 0;

tipo_seta = 0;
n_setas_inicio = 3;
n_setas = n_setas_inicio;
seta = 0;
global.turno = 0;
bpm = 103;
delay_padrao = (60*60)/bpm
delay = delay_padrao

// Controles da memória
player_pos = 0;
player_erro = false;
player_acertou = false;

// Sprites
e_frame = 0;
frame = 0;
caranguejo_pos = 0;
alpha_c = 1;
alpha_n = 1;
ultimo_turno = global.turno;
ultimo_sprite = sCaranguejoDancaI;
global.novo_sprite_c = sCaranguejoDancaI;
global.novo_sprite_n = sNairaDancaI;
tempo = 60;
pd_hey = 0;

//countdown
timer	= 180;//3 segundos
global.comecou = false;

conta = 0

///@function func_notas()
func_notas = function()
{
	if (global.turno == 0)
	{
		delay--;

		if (delay <= 0)
		{
			var aleatorio = irandom(3);
			
			if (array_length(global.seq_setas) > 0)
			{
				if (aleatorio = array_last(global.seq_setas))
				{
					aleatorio -= irandom_range(1, 3);
					if (aleatorio < 0)
					{
						aleatorio += 4;
					}
				}
			}
			
			switch(aleatorio)
			{
				case 0:
					if (!audio_is_playing(sndUpC))
					{
						audio_play_sound(sndUpC, 1, 0);
					}
					break;
				case 1:
					if (!audio_is_playing(sndRightC))
					{
						audio_play_sound(sndRightC, 1, 0);
					}
					break;
				case 2:
					if (!audio_is_playing(sndDownC))
					{
						audio_play_sound(sndDownC, 1, 0);
					}
					break;
				case 3:
					if (!audio_is_playing(sndLeftC))
					{
						audio_play_sound(sndLeftC, 1, 0);
					}
					break;
			}
			
			array_push(global.seq_setas, aleatorio);

			n_setas--;
			
			delay = delay_padrao;
			
			if (n_setas <= 0)
			{
				tempo = 30;
				pd_hey = 1
				global.turno = 1;
				player_pos = 0;
			}
		}
	}
	else
	{
		var tecla = -1;

		if (up)
		{
			tecla = 0;
		}
		else if (right)
		{
			tecla = 1;
		}
		else if (down)
		{
			tecla = 2;
		}
		else if (left)
		{
			tecla = 3;
		}

		if (tecla != -1)
		{
			if (tecla == global.seq_setas[player_pos])
			{
				player_pos++;

				if (player_pos >= array_length(global.seq_setas))
				{
					if (!audio_is_playing(sndAcerto))
					{
						audio_play_sound(sndAcerto, 1, 0);
					}
					conta ++;
					n_setas = n_setas_inicio + conta;
					
					if (conta == 2)
					{
						var transic = instance_create_layer(0, 0, "Batalha", oTransicao);
						transic.rm_goto = "pós-dança";
						transic.starting = false;
						transic.modo_transic = 1;
						oPlayer.pd_mover = true;
						global.venceu_caranguejo = true;
						oCaranguejo.pd_dialogar = true;
						//oCaranguejo.hspeed = 3;
						audio_stop_all();
						instance_destroy(oDanca);
						instance_destroy();
					}
					global.seq_setas = [];
					tempo = 30;
					global.turno = 0;
				}
			}
			else
			{
				if (!audio_is_playing(sndErro))
				{
					audio_play_sound(sndErro, 1, 0);
				}
				n_setas = n_setas_inicio;
				conta = 0;
				tempo = 30
				global.seq_setas = [];
				global.turno = 0;
			}
		}
	}
}