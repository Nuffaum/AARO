image_xscale = 18.5;
image_yscale = 4.5;

mapstring	= "!#$%&'()*+,-./0123456789:;<=>?@AÁÂÃBCDEÉÊFGHIÍJKLMNOÓÔÕPQRSTUÚVWXYZ[]~^_`´aáâãbcçdeéêfghiíjklmnoóôõpqrstuúvwxyz{|}"
fonte		= font_add_sprite_ext(sFont, mapstring, true, 0);

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
	resetarDialogo();
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
				if struct_exists(dialogos[linha_atual], "t")
				{
					switch(dialogos[linha_atual].t)
					{
						case 1://dialogo normal
							oPlayer.pd_mover = 1;
							instance_destroy();
						break;
						case 2://dialogo com minigame
							abrir_minigame();
						break;
						case 3://dialogo com movimento depois (caranguejo)
							oCaranguejo.hspeed = 3;
							oPlayer.pd_mover = true;
							instance_destroy();
						break;
						case 4:							
							global.pd_abrir = 1
							origem.porta_id.trancado = 0;
							oPlayer.pd_mover = 1;
							instance_destroy();
						break
						default:
							oPlayer.pd_mover = 1;
							instance_destroy();
						break;
					}
				}
				else
				{
					oPlayer.pd_mover = 1;
					instance_destroy();
				}
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

///@function abrir_minigame()
abrir_minigame = function()
{
	oPlayer.pd_mover = 0;
	global.minigame = 1;
	
	if struct_exists(dialogos[linha_atual], "mg")
	{
		switch(dialogos[linha_atual].mg)
		{
			case "dança"://minigame da dança insana do caranguejao
				var transic = instance_create_layer(0, 0, "Batalha", oTransicao);
				transic.rm_goto = "dança";
				transic.starting = false;
				transic.modo_transic = 1;
			break;
		}
	}
	
	instance_destroy();
}

#endregion
resetarDialogo();