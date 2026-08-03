/// @description Funções do Menu
// You can write your code in this editor

//variáveis pro menuzao
index		= 0;
options		= ["jogar", "opções", "créditos", "sair"];
size		= [8, 8, 8, 8];
hitboxes	= [noone, noone, noone, noone];
hitboxes_en	= [false, false, false, false];
enable_keys	= true;
//opções (settings)
volume_menu	= 100;
str_volume	= "volume: " + string(volume_menu)
opt_options	= [str_volume, "voltar"];
menu_index	= 0;
menu_list	= [options, opt_options];

//fonte do menu
mapstring	= "1234567890abcçdeéfghijklmnoõpqrstuvwxyz:";
font_menu	= font_add_sprite_ext(sFonteMenu, mapstring, true, 1);

///@function menu()
menu = function()
{
	draw_set_font(font_menu);
	
	var num_options = array_length(menu_list[menu_index]);
	
	for(var i = 0; i < num_options; i ++)
	{
		var xx, yy, buffer, ww, hh;
		
		var base_size = 8;
		var opt = menu_list[menu_index][i];//options[i] só pra facilita minha vida
		
		buffer	= 64;
		ww		= string_width(opt) * size[i];
		hh		= string_height(opt) * base_size;
		
		xx	= buffer + (ww / 2);
		yy	= (view_hport[0] / 2) + hh * (i * 2);
		
		draw_set_halign(1);
		draw_set_valign(1);
		
		if enable_keys == true
		{
			if index == i
			{
				size[i] = lerp(size[i], 10, .1);
			}
			else
			{
				size[i] = lerp(size[i], 8, .1);
			}
		}
		
		draw_text_transformed(xx, yy, opt, size[i], size[i], 0);
		
		draw_set_halign(-1);
		draw_set_valign(-1);
		
		#region seleção do botao com mouse
		
		var prop = view_wport[0] / camera_get_view_width(view_camera[0]);
		
		if instance_number(oMenuHitbox) < 4
		{
			static num_hit = 0;
			num_hit ++;
			
			var y_off = (yy - hh / 2) / prop;//o broco é criado no room mesmo, sem ser no GUI
			var x_off = (buffer) / prop
			var hitbox = instance_create_depth(x_off, y_off, depth, oMenuHitbox);
			
			hitboxes[i] = hitbox.id;
			hitboxes[i].num = num_hit - 1;
		}
		
		var hitbox = hitboxes[i];
		
		//gambiarrinha pra fazer uma hitbox pra dar pro mouse escolher uma opção no menu
		hitbox.image_xscale = (ww / prop);
		hitbox.image_yscale = (hh / prop);
		
		//mouse na hitboquis
		if tocando_hit(hitbox)
		{
			size[i] = lerp(size[i], 10, .05);
			index = hitbox.num;
			//show_message(hitbox.num)
			enable_keys = false;
		}
		else
		{
			size[i] = lerp(size[i], 8, .05);
		}
		
		//hitboxes_en[i] = enable_keys;
		
		//if not array_contains(hitboxes_en, true)
		//{//se num tiver com o mouse nos textos, vai ativar o sistema de W e S (e setinhas)
			//enable_keys = true;
		//}
		
		#endregion
		
		str_volume = "volume: " + string(volume_menu);
		opt_options	= [str_volume, "voltar"];
		
		//trocando de index com o W e o S, dps eu adiciono o scroll do mouse
	}
		
		#region seleção do botao com teclado
		
		var w_key	= keyboard_check_pressed(ord("W")) or keyboard_check_pressed(vk_up);
		var s_keys	= keyboard_check_pressed(ord("S")) or keyboard_check_pressed(vk_down);
		
		if w_key
		{
			if !(index - 1 < 0)
			{
				index --;
			}
			else
			{
				index = num_options - 1;
			}
			
			enable_keys = true;
		}
		if s_keys
		{
			if !(index + 1 > num_options - 1)
			{
				index ++;
			}
			else
			{
				index = 0;
			}
			enable_keys = true;
		}
		
		#endregion
	
	#region acontecendo coisa quando dá enter ou clica
	
	var select = keyboard_check_pressed(vk_enter);
	
	if enable_keys == false//se tiver no modo do mouse
	{
		select = mouse_check_button_pressed(mb_left);
	}
	
	//enter
	if select
	{
		if menu_index == 0
		{
			switch(index)
			{
				case 0://Play
				
					var trst = instance_create_depth(0, 0, depth, oTransicao);
					trst.starting = false;
					trst.rm_goto = rmVagoes//muda dps quando tiver a room do jogo
					
					//(instance_number(oTransicao))
				
				break;
				case 1://Options
				
					menu_index ++;
					index = 0;
				
				break;
				case 2://Credits
				
				
				
				break;
				case 3://quit
				
					game_end();
				
				break;
			}
		}
		else
		{
			switch(index)
			{
				case 0://volume
					
					
					
				break;
				case 1://back
					menu_index --;
					index = 0;
				break;
			}
		}
	}
	
	//volume no menu
	menu_list	= [options, opt_options];
	str_volume = "volume: " + string(volume_menu);
	opt_options	= [str_volume, "back"];
	
	if menu_index == 1
	{
		if index == 0
		{//negoço do volume
			if mouse_wheel_up()
			{
				if volume_menu < 100
				{
					volume_menu += 5;
				}
				//show_message(str_volume)
			}
			else if mouse_wheel_down()
			{
				if volume_menu > 0
				{
					volume_menu -= 5;
				}
				//show_message(str_volume)
			}
		}
	}
	
	#endregion
	
	draw_set_font(-1);
}

///@function tocando_hit()
tocando_hit = function(inst)
{
	return position_meeting(mouse_x, mouse_y, inst);
}
