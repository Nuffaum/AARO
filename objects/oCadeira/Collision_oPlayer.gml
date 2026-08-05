if (keyboard_check_pressed(ord("E")))
{
	if (!instance_exists(oCaixaDialogo) && pd_dialogar == 1)
	{
		var diag = instance_create_layer(192, 44, "Dialogos", oCaixaDialogo);
		diag.dialogos = dialogos;
		diag.origem = id;
		oPlayer.pd_mover = 0;
		pd_dialogar = 0;
	}
}
else
{
	if (!instance_exists(oCaixaDialogo) && pd_dialogar == 0)
	{
		oPlayer.pd_mover = 1;
		pd_dialogar = 1;
	}
}