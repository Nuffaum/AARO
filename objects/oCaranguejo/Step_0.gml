if x >= 1000
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
		dialogo = global.dialogo4;
	}
}
else if global.venceu_caranguejo == true
{
	dialogos = global.dialogo5;//texto que tu ja ganhou do caranguejo
}