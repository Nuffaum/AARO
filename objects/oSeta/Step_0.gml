left = keyboard_check(vk_left) or keyboard_check(ord("A"));
down = keyboard_check(vk_down) or keyboard_check(ord("S"));
up = keyboard_check(vk_up) or keyboard_check(ord("W"));
right = keyboard_check(vk_right) or keyboard_check(ord("D"));

tempo = tempo_inicio - current_time;

switch(seta)
{
	case 0:
		if (up)
		{
			image_index = seta + 4;
		}
		else
		{
			image_index = seta;
		}
		break;
	case 1:
		if (right)
		{
			image_index = seta + 4;
		}
		else
		{
			image_index = seta;
		}
		break;
	case 2:
		if (down)
		{
			image_index = seta + 4;
		}
		else
		{
			image_index = seta;
		}
		break;
	case 3:
		if (left)
		{
			image_index = seta + 4;
		}
		else
		{
			image_index = seta;
		}
		break;
}