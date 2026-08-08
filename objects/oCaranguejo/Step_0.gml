if x >= 400
{
	instance_destroy();
}

if variable_global_exists("global.sabe_dancar")
{
	sabe = global.sabe_dancar;
}

if venceu == false
{
	if global.sabe_dancar == false
	{
		dialogos = global.dialogo3;
	}
	else
	{
		dialogo = global.dialogo4;
	}
}
else
{
	dialogos = global.dialogo4;//texto que tu ja ganhou do caranguejo
}