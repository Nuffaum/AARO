image_xscale = 21.75;
image_yscale = 5.5;

mapstring	= "!#$%&'()*+.-./0123456789:;<=>?@ABCDEÉFGHIÍJKLMNOÓPQRSTUÚVWXYZ[]^_`aábcdeéfghiíjklmnoópqrstuúvwxyz{|}"
fonte		= font_add_sprite_ext(sFont, mapstring, true, 0);
draw_set_font(fonte);

dialogos = global.dialogo1;
origem = undefined;
dialogo_display = "";
linha_atual = 0;
carac = 1;
vel = 2;
vel_dialogo = vel;

card = sFaceCardNaira;
nome = "";
cor = c_white;

#region funções

///@function resetarDialogo()
resetarDialogo = function()
{
	if (struct_exists(dialogos[linha_atual], "v"))
	{
		vel = dialogos[linha_atual].v;
	}
	else
	{
		vel = 2;
	}

	if (struct_exists(dialogos[linha_atual], "c"))
	{
		card = dialogos[linha_atual].c;
		nome = dialogos[linha_atual].n;
	}
	else if (struct_exists(dialogos[linha_atual], "p"))
	{
		card = global.personagens[dialogos[linha_atual].p].c;
		nome = global.personagens[dialogos[linha_atual].p].n;
	}

	if (struct_exists(dialogos[linha_atual], "cor"))
	{
		cor = dialogos[linha_atual].cor;
	}
	else if (struct_exists(dialogos[linha_atual], "p"))
	{
		cor = global.personagens[dialogos[linha_atual].p].cor;
	}
	else
	{
		cor = c_white
	}
}

///@function dialogo()
dialogo = function()
{
	if (carac <= string_length(dialogos[linha_atual].texto))
	{
		vel_dialogo --
		if (vel_dialogo <= 0)
		{
	        dialogo_display += string_char_at(dialogos[linha_atual].texto, carac);
	        carac++;
			vel_dialogo = vel;
	    }
	}
	
	if (keyboard_check_pressed(ord("E")))
	{
		if (carac < string_length(dialogos[linha_atual].texto))
		{
			dialogo_display = dialogos[linha_atual].texto;
			carac = string_length(dialogos[linha_atual].texto) + 1;
		}
		else
		{
			if (linha_atual < array_length(dialogos) - 1)
			{
				dialogo_display = "";
				linha_atual ++;
				carac = 1;
				resetarDialogo();
				vel_dialogo = vel;
			}
			else
			{
				instance_destroy();
			}
		}
	}
	
	if (struct_exists(dialogos[linha_atual], "pa"))
	{
		if (linha_atual < array_length(dialogos) - 1)
		{
			if (carac >= string_length(dialogos[linha_atual].texto))
			{
				vel_dialogo --
				if (vel_dialogo <= 0)
				{
					dialogo_display = "";
					linha_atual ++;
					carac = 1;
					resetarDialogo();
					vel_dialogo = vel;
				}
			}
		}
		else
		{
			instance_destroy();
		}
	}
}

#endregion
resetarDialogo();