if int_manual == true and place_meeting(x, y, oPlayer)
{
	if keyboard_check_released(ord("E"))
	{
		tam	= lerp(tam, target, .2);
		oCaranguejo.dialogos = global.dialogo4;
		int_manual = false;
	}
	
	target = 1;
}
else
{
	target = 0;
}

if (tam >= 0.5 and oPlayer.pd_mover)
{
	draw_sprite_ext(sManual, 0, view_wport[0] / 2, view_hport[0] / 2, tam * 5, tam * 5, 0, -1, 1);
}
tam	= lerp(tam, target, .2);