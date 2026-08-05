// Inherit the parent event
event_inherited();

porta_fec = false;

///@function porta_func()
porta_func = function()
{
	if porta_fec == true
	{
		if player_pos[0] < x//a rapaza entrou pela esquerda na porta
		{
			var pos_player = [oPlayer.x, oPlayer.y];
			
			if !place_meeting(x, y, oPlayer)
			{
				if pos_player[0] > x
				{
					solido = true;
					
					image_index ++;
					pd_int = true;
					porta_fec = false;
				}
			}
		}
		else if player_pos[0] > x//rapaza entrou pela direita
		{
			var pos_player = [oPlayer.x, oPlayer.y];
			
			if !place_meeting(x, y, oPlayer)
			{
				if pos_player[0] < x
				{
					solido = true;
					
					image_index ++;
					pd_int = true;
					porta_fec = false;
				}
			}
		}
	}
}