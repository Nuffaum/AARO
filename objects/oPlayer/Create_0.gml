///@description Controle do player

#region variáveis

cam_largura = 384;
cam_altura	= 216;
cam_dist = 361;
camera_set_view_size(view_camera[0], cam_largura, cam_altura);

//velocidades
spd		= 1;
hspd	= 0;
vspd	= 0;
grav	= .2;

//pulo
pulo_spd	= -3;

//cutscene
frame_i = 0;
pd_contar = 1;
repeticoes = 0;
cuts = 1;

cut_wakeup = 0;

e_frame = 0;
pd_mover = 0;

#endregion

#region funções

///@function controle_player()
controle_player = function()
{
	var dir, esq, pulo;
	dir		= keyboard_check(ord("D"));
	esq		= keyboard_check(ord("A"));
	pulo	= keyboard_check_pressed(vk_space) or keyboard_check_pressed(ord("W"));
	
	hspd = (dir - esq) * spd;
	
	#region colisão
	
	if place_meeting(x + hspd, y, oSolid)
	{
		while !place_meeting(x + sign(hspd), y, oSolid)
		{
			x += sign(hspd);
		}
		
		hspd = 0;
	}
	//colisao com a porta dos vagao
	var porta = instance_place(x, y, oPorta)
	
	if porta && porta.solido == true
	{
		if place_meeting(x + hspd, y, porta)
		{
			while !place_meeting(x + sign(hspd), y, porta)
			{
				hspd = sign(hspd);
			}
			hspd = 0;
		}
	}
	else if porta && porta.solido == false
	{
		
	}
	
	x += hspd;
	
	if place_meeting(x, y + vspd, oSolid)
	{
		while !place_meeting(x, y + sign(vspd), oSolid)
		{
			y += sign(vspd);
		}
		
		vspd = 0;
	}
	
	y += vspd;
	
	#endregion
	
	#region pulao do player e gravidade
	
	var chao = place_meeting(x, y + 1, oSolid);
	
	if !chao
	{
		vspd += grav;
	}
	else if pulo
	{
		vspd = pulo_spd;
	}
	
	#endregion
	
	#region sprites
	
	if (hspd != 0)
	{
		image_xscale = sign(hspd);
		sprite_index = sPlayerWalk;
	}
	else
	{
		sprite_index = sPlayerIdle;
	}
	
	#endregion
}

///@function camera_function()
camera_function = function()
{
	var x_cam, y_cam;
	x_cam = (x div cam_dist) * cam_dist;
	y_cam = (y div cam_altura) * cam_altura;
	
	var xx = lerp(camera_get_view_x(view_camera[0]), x_cam, .2);
	var yy = lerp(camera_get_view_y(view_camera[0]), y_cam, .2);
	
	camera_set_view_pos(view_camera[0], xx, yy);
}

///@function cutscenes(cutscene)
cutscenes = function(cutscene)
{
	switch(cutscene)
	{
		case 0:
			if (!cut_wakeup)
			{
				camera_set_view_size(view_camera[0], cam_largura/3, cam_altura/3);
				camera_set_view_pos(view_camera[0], x - camera_get_view_width(view_camera[0])/2, y - (camera_get_view_height(view_camera[0])/2));
				if (sprite_index == sPlayerSleep)
				{
					if (pd_contar)
					{
						repeticoes = 1;
						pd_contar = 0;
					}
					if (!pd_contar)
					{
						if (image_index < frame_i)
						{
						    repeticoes--;
						}

						frame_i = image_index;
				
						if (repeticoes <= 0)
						{
							sprite_index = sPlayerWakeup;
							frame_i = 0;
							cut_wakeup = 1;
						}
					}
				}
			}
			else
			{
				if (image_index >= 12)
				{
					var cam_ww = lerp(camera_get_view_width(view_camera[0]), cam_largura, 0.2);
					var cam_hh = lerp(camera_get_view_height(view_camera[0]), cam_altura, 0.2);
					var cam_x = lerp(camera_get_view_x(view_camera[0]), 0, 0.2);
					var cam_y = lerp(camera_get_view_y(view_camera[0]), 0, 0.2);
					camera_set_view_size(view_camera[0], cam_ww, cam_hh);
					camera_set_view_pos(view_camera[0], cam_x, cam_y);
				}
				else
				{
					camera_set_view_size(view_camera[0], cam_largura/3, cam_altura/3);
					camera_set_view_pos(view_camera[0], x - camera_get_view_width(view_camera[0])/2, y - (camera_get_view_height(view_camera[0])/2));
				}
				
				if (image_index < frame_i)
				{
					camera_set_view_size(view_camera[0], cam_largura, cam_altura);
					camera_set_view_pos(view_camera[0], 0, 0);
					cuts = 0;
					pd_mover = 1;
				}
						
				frame_i = image_index;
			}
			break
	}
}
#endregion