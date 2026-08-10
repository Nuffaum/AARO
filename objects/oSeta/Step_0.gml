left = keyboard_check_pressed(vk_left) or keyboard_check_pressed(ord("A"));
down = keyboard_check_pressed(vk_down) or keyboard_check_pressed(ord("S"));
up = keyboard_check_pressed(vk_up) or keyboard_check_pressed(ord("W"));
right = keyboard_check_pressed(vk_right) or keyboard_check_pressed(ord("D"));

audio_stop_sound(musOST0);

if (global.comecou)
{
	if (!audio_is_playing(musSLA))
	{
		audio_play_sound(musSLA, 1, 0);
	}
	
	if (control)
	{
		func_notas();
	}
	
	if (tipo_seta == 1)
	{
		if (seta == 0 && global.novo_sprite_c == sCaranguejoDancaU)
		{
			sprite_index = sSetaDirApertando;
		}
		else if (seta == 1 && global.novo_sprite_c == sCaranguejoDancaR)
		{
			sprite_index = sSetaDirApertando;
		}
		else if (seta == 2 && global.novo_sprite_c == sCaranguejoDancaD)
		{
			sprite_index = sSetaDirApertando;
		}
		else if (seta == 3 && global.novo_sprite_c == sCaranguejoDancaL)
		{
			sprite_index = sSetaDirApertando;
		}
		else
		{
			sprite_index = sSetaDir;
		}
	}
	else
	{
		
	}
}
else
{
	x = lerp(x, xx, 0.1);
	y = lerp(y, yy, 0.1);
}