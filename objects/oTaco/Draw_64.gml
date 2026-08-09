if morte_caranguejo == true
{	
	alpha = lerp(alpha, target, spd);
	
	if alpha >= 0.8
	{
		spd = fspd;
	}
	
	if alpha >= 1
	{
		target = 0;
		
		global.caranguejo_morto = 1;
		instance_destroy(oCaixaDialogo);
		instance_destroy(oCaranguejo);
	}
	
	draw_set_alpha(alpha);
	draw_set_colour(c_black);
	draw_rectangle(0, 0, view_wport[0], view_hport[0], false);
	draw_set_colour(-1);
	draw_set_alpha(1);
	
	if !instance_exists(oCaranguejo)
	{
		if alpha <= .9
		{
			global.pd_abrir = 1;
			oPlayer.pd_mover = true;
			image_alpha = 0;
		}
		if alpha <= .01
		{
			instance_destroy();
		}
	}
}