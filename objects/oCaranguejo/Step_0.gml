if x >= 400
{
	instance_destroy();
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