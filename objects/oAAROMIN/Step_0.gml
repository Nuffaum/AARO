if (vagao == global.vagao and global.pd_abrir)
{
	pd_abrir = 1;
	global.pd_abrir = 0;
}

if (vagao == 2 and global.venceu_caranguejo)
{
	pd_abrir = 1;
	global.pd_abrir = 0;
}

if (!pd_abrir)
{
	if (vagao == 1 and global.reinicou)
	{
		dialog1 = global.diag_aaromin1p3;
	}
	
	dialogos = dialog1;
}
else
{
	dialogos = dialog2;
}