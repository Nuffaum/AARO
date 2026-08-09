if (keyboard_check_pressed(ord("E")))
{
	if (!instance_exists(oCaixaDialogo) && pd_dialogar == 1)
	{
		var diag = instance_create_layer(camera_get_view_x(view_camera) + 192, 44, "Dialogos", oCaixaDialogo);
		diag.dialogos = dialogos;
		diag.origem = id;
		oPlayer.sprite_index = sPlayerIdle;
		oPlayer.pd_mover = 0;
		pd_dialogar = 0;
	}
}
else
{
	if (!global.minigame)
	{
		if (!instance_exists(oCaixaDialogo) && pd_dialogar == 0)
		{
			pd_dialogar = 1;
		}
	}
	else
	{
		pd_dialogar = 0;
	}
}