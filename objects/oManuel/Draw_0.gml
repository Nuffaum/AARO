draw_self();

if int_manual == true
{
	if keyboard_check_pressed(ord("E"))
	{
		oPlayer.pd_mover = 1;
		int_manual = false;
	}
	
	target = 1;
	tam	= lerp(tam, target, .2);
	draw_sprite_ext(sManual, 0, room_width / 2, room_height / 2, tam, tam, 0, -1, tam);
}
else
{
	target = 0;
}