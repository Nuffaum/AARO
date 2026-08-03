///@description Controle do player

#region variáveis

//velocidades
spd		= 1.5;
hspd	= 0;
vspd	= 0;
grav	= .2;

//pulo
pulo_spd	= -3;

//diálogos
mapstring	= "!#$%&'()*+.-./0123456789:;<=>?@ABCDEÉFGHIÍJKLMNOÓPQRSTUÚVWXYZ[]^_`aábcdeéfghiíjklmnoópqrstuúvwxyz{|}"
fonte		= font_add_sprite_ext(sFont, mapstring, true, 0);
draw_set_font(fonte);

lista_dialogos	= [];
lista_spds		= [];
index			= 0;
i				= 0;
tocando			= false;
dialogar		= false;


#endregion

#region funções

///@function controle_player()
controle_player = function()
{
	var dir, esq, pulo;
	dir		= keyboard_check(ord("D"));
	esq		= keyboard_check(ord("A"));
	pulo	= keyboard_check_pressed(vk_space) or keyboard_check_pressed(ord("W"));
	
	hspd = (dir - esq) * spd;
	
	#region colisão
	
	if place_meeting(x + hspd, y, oSolid)
	{
		while !place_meeting(x + sign(hspd), y, oSolid)
		{
			x += sign(hspd);
		}
		
		hspd = 0;
	}
	
	x += hspd;
	
	if place_meeting(x, y + vspd, oSolid)
	{
		while !place_meeting(x, y + sign(vspd), oSolid)
		{
			y += sign(vspd);
		}
		
		vspd = 0;
	}
	
	y += vspd;
	
	#endregion
	
	#region pulao do player e gravidade
	
	var chao = place_meeting(x, y + 1, oSolid);
	
	if !chao
	{
		vspd += grav;
	}
	else if pulo
	{
		if array_length(lista_dialogos) <= 0
		{
			vspd = pulo_spd;
		}
	}
	
	#endregion
	
	#region sprites
	
	if (hspd != 0)
	{
		image_xscale = sign(hspd);
	}
	
	#endregion
}

///@function dialogo()
dialogo = function(spd_dialogo = .2, cuspindo_fatos = false)
{
	if array_length(lista_dialogos) > 0
	{
		if alarm[0] <= 0
		{	
			var spd_use = spd_dialogo;
			
			var dialogo_atual = lista_dialogos[index]
			
			if i >= string_length(dialogo_atual)
			{
				if (index + 1 < array_length(lista_dialogos))
				{
					if cuspindo_fatos == false//se o dialogo for normal
					{
						if keyboard_check_pressed(vk_space) or keyboard_check_pressed(ord("E"))
						{
							index ++;
							//show_message(index < array_length(lista_dialogos))
							i = 0;
							//show_message(index)
						}
					}
					else//se o dialogo for tagarela
					{
						i = 0;
						index ++;
					}
				}
				else
				{
					if keyboard_check_pressed(ord("E")) or keyboard_check_pressed(vk_space)
					{
						array_delete(lista_dialogos, 0, array_length(lista_dialogos));
						
						tocando = true;
						alarm[0] = 5;
						return;
					}
				}
			}
			else if i < string_length(dialogo_atual)
			{
				//show_message(i)
				if keyboard_check_pressed(ord("E")) or keyboard_check_pressed(vk_space)
				{
					i = string_length(dialogo_atual);
				}
			}
			
			//sistema de dialogo com textao dinamico
			//velocidade que o texto vai ficar passando
			i += spd_use;
			
			var txt = string_copy(lista_dialogos[index], 1, i);
			
			var size	= view_wport / 8;
			var xx		= view_wport / 2;
			var yy		= view_hport[0] - size;
	
			var x1, y1, x2, y2;
			x1	= 0;
			y1	= view_hport[0] - size;
			x2	= size;
			y2	= view_hport[0];
			
			//quadrado com a cara do caba falando (bota o sprite depois)
			//draw_rectangle(x1, y1, x2, y2, false);
			
			draw_sprite(sFaceCard, 0, x1, y1);
			
			var txt_size = 3;
			var buffer = 8;
		
			//retangulo do texto (text box sla)
			var txt_len = view_wport[0] / 3;
		
			x1 = size;
			x2 = x1 + txt_len;
	
			draw_set_colour(c_aqua);
			draw_rectangle(x1, y1, x2, y2, false);
			
			draw_set_halign(1);
			draw_set_colour(c_white);//so por enquanto que nao tem a fonte
			draw_text_ext_transformed(xx, yy, txt, 0, txt_len, txt_size, txt_size, 0);
			draw_set_colour(-1);
		}
	}
	else
	{
		i = 0;
	}
	
	if !place_meeting(x, y, oDialogos)
	{
		//tocando = false;
	}
}

#endregion

