draw_self();



if (seta == 1)
{
	if (tipo_seta == 1)
	{		
		if (global.turno == 0)
		{			
			ultimo_turno = global.turno;
			if (array_length(global.seq_setas) > 0)
			{
				switch(global.seq_setas[array_length(global.seq_setas) - 1])
				{
					case 0:
						global.novo_sprite_c = sCaranguejoDancaU;
						break;
					case 1:
						global.novo_sprite_c = sCaranguejoDancaR;
						break;
					case 2:
						global.novo_sprite_c = sCaranguejoDancaD;
						break;
					case 3:
						global.novo_sprite_c = sCaranguejoDancaL;
						break;
				}
				
				if (ultimo_sprite == global.novo_sprite_c)
				{
					e_frame = 0;
					frame = 0
					ultimo_sprite = global.novo_sprite_c
				}
			}
			else
			{
				global.novo_sprite_c = sCaranguejoDancaI;
			}
		}
		else
		{
			if (ultimo_turno != global.turno)
			{
				if (array_length(global.seq_setas) > 0)
				{
					switch(global.seq_setas[array_length(global.seq_setas) - 1])
					{
						case 0:
							global.novo_sprite_c = sCaranguejoDancaU;
							break;
						case 1:
							global.novo_sprite_c = sCaranguejoDancaR;
							break;
						case 2:
							global.novo_sprite_c = sCaranguejoDancaD;
							break;
						case 3:
							global.novo_sprite_c = sCaranguejoDancaL;
							break;
						default:
							global.novo_sprite_c = sCaranguejoDancaI;
							break;
					}
					
					if (ultimo_sprite == global.novo_sprite_c)
					{
						e_frame = 0;
						frame = 0
						ultimo_sprite = global.novo_sprite_c
					}
				}
				tempo = 30;
				e_frame = 0;
				frame = 0;
				ultimo_turno = global.turno;
			}
			else
			{
				tempo --;
				if (tempo <= 0)
				{
					if (pd_hey)
					{
						if (!audio_is_playing(sndHeyC))
						{
							audio_play_sound(sndHeyC, 1, 0);
						}
						pd_hey = 0;
					}
					global.novo_sprite_c = sCaranguejoDancaI;
				}
			}
		}
		var vel_anim = sprite_get_speed(global.novo_sprite_c);
		e_frame += vel_anim/60;
		
		if (e_frame >= 1)
		{
			frame ++;
			
			e_frame = 0;
		}
		
		if (frame > sprite_get_number(global.novo_sprite_c))
		{
			frame = 0;
		}
		
		draw_sprite_ext(global.novo_sprite_c, frame, x - 56, y, 2, 2, 0, c_white, alpha_c);
	}
	else
	{
		if (up)
		{
			tempo = 30;
			if (!audio_is_playing(sndUpN))
			{
				audio_play_sound(sndUpN, 1, 0);
			}
			global.novo_sprite_n = sNairaDancaU;
		}
		else if (right)
		{
			tempo = 30;
			if (!audio_is_playing(sndRightN))
			{
				audio_play_sound(sndRightN, 1, 0);
			}
			global.novo_sprite_n = sNairaDancaR;
		}
		else if (down)
		{
			tempo = 30;
			if (!audio_is_playing(sndDownN))
			{
				audio_play_sound(sndDownN, 1, 0);
			}
			global.novo_sprite_n = sNairaDancaD;
		}
		else if (left)
		{
			tempo = 30;
			if (!audio_is_playing(sndLeftN))
			{
				audio_play_sound(sndLeftN, 1, 0);
			}
			global.novo_sprite_n = sNairaDancaL;
		}
		
		var vel_anim = sprite_get_speed(global.novo_sprite_n);
		e_frame += vel_anim/60;
		
		if (e_frame >= 1)
		{
			frame ++;
			
			e_frame = 0;
		}
		
		if (tempo > 0)
		{
			tempo --;
		}
		else
		{
			global.novo_sprite_n = sNairaDancaI;
		}
		
		if (frame > sprite_get_number(global.novo_sprite_n) and global.novo_sprite_n == sNairaDancaI)
		{
			frame = 0;
		}
		
		draw_sprite_ext(global.novo_sprite_n, frame, x - 56, y, 2, 2, 0, c_white, alpha_c);
	}
}