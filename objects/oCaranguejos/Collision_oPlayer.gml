if (global.caranguejo_morto)
{
	global.reinicou = 1;
	room_restart();
}
else
{
	if(!pd_vazar)
	{
		if (x <= oPlayer.x)
		{
			hspeed = 0;
		
			if (!instance_exists(oCaixaDialogo))
			{
				var diag = instance_create_layer(camera_get_view_x(view_camera) + 192, 44, "Dialogos", oCaixaDialogo);
				diag.dialogos = global.diag_comemoracao2;
				diag.origem = id;
				pd_mover = 0;
			}
		}
	}
}