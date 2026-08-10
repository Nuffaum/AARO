switch (cuts)
{
	case 1:
		cutscenes(0);
		break;
	case 2:
		cutscenes(1);
		break;
	case 3:
		cutscenes(2);
		break;
}

if (global.vagao == 4)
{
	if (x >= 1483 and cheiro = "nada")
	{
		cuts = 2;
	}
}

if (global.vagao == 5)
{
	if (instance_exists(oCoelho))
	{
		if (cheiro != "nada" and  x >= 1985)
		{
			cuts = 3;
		}
	}
}

if (place_meeting(x, y, oCenoura))
{
	cheiro = "cenoura"
}

if (pd_mover)
{
	controle_player();
}

camera_function();