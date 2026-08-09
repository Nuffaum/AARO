switch (cuts)
{
	case 1:
		cutscenes(0);
		break;
	case 2:
		cutscenes(1);
		break;
}

if (global.vagao == 4)
{
	if (global.caranguejo_morto and x >= 1483)
	{
		cuts = 2;
	}
}

if (pd_mover)
{
	controle_player();
}

camera_function();

if (keyboard_check_pressed(ord("R")))
{
	global.reinicou = 1;
	room_restart();
}