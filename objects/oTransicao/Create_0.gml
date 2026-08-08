/// @description Transição duma tela pra outra
// You can write your code in this editor

starting = true;

size		= 196;
size_change = false;
rm_goto		= rmMenu;

modo_transic = 0
///@function transition_in()
transition_in = function(rm = rm_goto)
{
	if starting == true
	{
		if size_change == false
		{
			size = 196;
			
			size_change = true;
		}
		
		var dist = 196;
	
		var num_x = view_wport[0] / dist;
		var num_y = view_hport[0] / dist;
	
		for(var i = 0; i < num_x; i ++)
		{
			for(var j = 0; j < num_y; j ++)
			{
				var x1, y1, x2, y2;
				x1 = dist * i;
				y1 = dist * j;
				x2 = x1 + size;
				y2 = y1 + size;
				
				draw_set_colour(c_black);
				draw_circle((x1 + x2) / 2, (y1 + y2) / 2, size, false);
				draw_set_colour(-1);
				//draw_rectangle(x1, y1, x2, y2, false);
			}
		
			size = lerp(size, 0, .01);
		}
		
		if size <= .5
		{
			instance_destroy();
		}
	}
	else
	{
		if size_change == false
		{
			size = 0;
			size_change = true;
		}
		
		var dist = 196;
	
		var num_x = view_wport[0] / dist;
		var num_y = view_hport[0] / dist;
	
		for(var i = 0; i < num_x; i ++)
		{
			for(var j = 0; j < num_y; j ++)
			{
				var x1, y1, x2, y2;
				x1 = dist * i;
				y1 = dist * j;
				x2 = x1 + size;
				y2 = y1 + size;
			
				draw_set_colour(c_black);
				draw_circle((x1 + x2) / 2, (y1 + y2) / 2, size, false);
				draw_set_colour(-1);
				//draw_rectangle(x1, y1, x2, y2, false);
			}
		
			size =	lerp(size, dist, .01);
			
			if dist - (size + 0.5) <= 0
			{
				size_change = false;
				
				if (modo_transic == 0)
				{
					if room_exists(rm)
					{
						room_goto(rm);
					}
				}
				else
				{
					switch(rm_goto)
					{
						case "dança":
							instance_create_layer(0, 0, "Batalha", oDanca);//minigame da dança sendo criado
							layer_set_visible("Fundo_Minigame", true)
						break;
					}
				}
				
				size_change = false;
				starting = 1;
			}
		}
	}
}