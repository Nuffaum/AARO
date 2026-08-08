if int_manual == true
{
	if keyboard_check_released(ord("E"))
	{
		oPlayer.pd_mover = 1;
		oCaranguejo.dialogos = global.dialogo4;
		int_manual = false;
	}
	
	target = 1;
	draw_sprite_ext(sManual, 0, view_wport[0] / 2, view_hport[0] / 2, tam * 5, tam * 5, 0, -1, 1);
}
else
{
	target = 0;
}

tam	= lerp(tam, target, .2);