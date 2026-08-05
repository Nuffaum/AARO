solido	= true;
pd_int	= true;

//porta
player_pos	= [0, 0];
porta_fec	= false;

//tacao de baseball
seg_player = false;

///@function interacao()
interacao = function()
{
	if place_meeting(x, y, oPlayer)
	{
		if keyboard_check_pressed(ord("E"))
		{
			switch(self.object_index)
			{
				case oPorta: //interação da porta
					
					var pl = oPlayer;
					player_pos = [pl.x, pl.y];
					
					porta_fec = true;
					pd_int = false;
					
					image_index += 1;
					solido = !solido;
					
				break;
				case oTaco:
					
					seg_player = true;
				
				break;
			}
		}
	}
}