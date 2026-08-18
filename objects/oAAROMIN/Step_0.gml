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
	if (vagao == 5 && oPlayer.cheiro == "cenoura")
	{
		dialog2 = global.diag_aaromin5p3;
	}
	
	if (vagao == 6 && !instance_exists(oCoelho))
	{
		dialog2 = global.diag_aaromin6p3;
	}
	
	dialogos = dialog2;
}