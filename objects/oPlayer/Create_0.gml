///@description Controle do player

#region variáveis

cam_largura = 384;
cam_altura	= 216;
camera_set_view_size(view_camera[0], cam_largura, cam_altura);

//velocidades
spd		= 1;
hspd	= 0;
vspd	= 0;
grav	= .2;

//pulo
pulo_spd	= -3;

e_frame = 0;
pd_mover = 1;
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
	x_cam = (x div cam_largura) * cam_largura
	y_cam = (y div cam_altura) * cam_altura;
	
	var xx = lerp(camera_get_view_x(view_camera[0]), x_cam, .2);
	var yy = lerp(camera_get_view_y(view_camera[0]), y_cam, .2);
	
	camera_set_view_pos(view_camera[0], xx, yy);
}

#endregion

