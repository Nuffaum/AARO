image_xscale = 21.75;
image_yscale = 5.5;

mapstring	= "!#$%&'()*+.-./0123456789:;<=>?@ABCDEÉFGHIÍJKLMNOÓPQRSTUÚVWXYZ[]^_`aábcdeéfghiíjklmnoópqrstuúvwxyz{|}"
fonte		= font_add_sprite_ext(sFont, mapstring, true, 0);
draw_set_font(fonte);

dialogos = global.dialogo1;
origem = undefined;
dialogo_display = "";
linha_atual = 0;
carac = 0;
vel = 2;
vel_dialogo = vel;

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
				vel_dialogo = vel;
			}
			else
			{
				instance_destroy();
				origem.pd_dialogar = 1;
			}
		}
	}
}