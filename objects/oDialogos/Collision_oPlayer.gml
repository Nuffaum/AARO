if (keyboard_check_pressed(ord("E")))
{
	if (!instance_exists(oCaixaDialogo))
	{
		var diag = instance_create_layer(256, 56, "Dialogos", oCaixaDialogo);
		diag.dialogos = dialogos;
	}
}