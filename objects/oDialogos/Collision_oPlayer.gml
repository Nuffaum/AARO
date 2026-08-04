if (keyboard_check_pressed(ord("E")))
{
	if (!instance_exists(oCaixaDialogo) && pd_dialogar == 1)
	{
		var diag = instance_create_layer(256, 56, "Dialogos", oCaixaDialogo);
		diag.dialogos = dialogos;
		diag.origem = id;
		pd_dialogar = 0;
	}
}