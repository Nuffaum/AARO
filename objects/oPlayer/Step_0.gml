switch (cuts)
{
	case 1:
		cutscenes(0);
		break;
}

if (pd_mover)
{
	controle_player();
}

camera_function();

if (keyboard_check_pressed(ord("R")))
{
	room_restart();
}