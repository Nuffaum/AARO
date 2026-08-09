if (x >= camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) and hspeed > 0)
{
	instance_destroy();
}

if variable_global_exists("global.venceu_caranguejo")
{
	venceu = global.venceu_caranguejo;
}

if variable_global_exists("global.sabe_dancar")
{
	sabe = global.sabe_dancar;
}

if global.venceu_caranguejo == false
{
	if global.sabe_dancar == false
	{
		dialogos = global.dialogo3;
	}
	else
	{
		dialogos = global.dialogo4;
	}
}
else
{
	dialogos = global.dialogo5;//texto que tu ja ganhou do caranguejo
}