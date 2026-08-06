solido	= true;
pd_int	= true;

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
					if pd_int == true
					{
						instance_destroy(id);
					}
				break;
				case oTaco:
					if pd_int == true
					{
						seg_player	= true;
						pd_int		= false;
					}
				break;
			}
		}
	}
}