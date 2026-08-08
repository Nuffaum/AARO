solido	= true;
pd_int	= true;

//tacao de baseball
seg_player = false;

//manuel manual
tam			= 0;
target		= 1;
int_manual	= false;

///@function interacao()
interacao = function()
{
	if place_meeting(x, y, oPlayer) && oPlayer.pd_mover
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
					if global.venceu_caranguejo == true
					{
						if pd_int == true
						{
							seg_player	= true;
							pd_int		= false;
						}
					}
				break;
				case oManuel:
					int_manual = !int_manual; //ativa a interação com o manuel
					global.sabe_dancar = true;
				break;
			}
		}
	}
}