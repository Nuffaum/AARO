if (cheiro)
{
	audio_stop_all()
    sprite_index = sCoelhoCheiro;
    image_speed = 1; 
	
    if (image_index >= sprite_get_number(sCoelhoCheiro) - 1)
    {
        conta++;          
        image_index = 0;  
    }

    if (conta >= 8 && sentido == "cenoura")
    {
        abrindo_boca = true;
        cheiro = false;
        conta = 0;
		
        sprite_index = sCoelhoBoca;
        image_index = 0;
        image_speed = 1;
    }
	else if (conta >= 5 && sentido == "ruim")
	{
		hspeed = lerp(hspeed, 10, 0.07);
		
		if (place_meeting(x, y, oPorta))
		{
			audio_play_sound(sndExplosao, 1, 0);
			instance_destroy(id_porta);
			alarm[0] = 30;
		}
	}
}
if (abrindo_boca)
{
    sprite_index = sCoelhoBoca;
	
	if (!audio_is_playing(sndSugando))
	{
		audio_play_sound(sndSugando, 1, 0);
	}

    if (image_index >= sprite_get_number(sCoelhoBoca) - 1)
    {		
        image_index = sprite_get_number(sCoelhoBoca) - 1;
        image_speed = 0;
		
		oPlayer.image_angle += 5;
        oPlayer.x = lerp(oPlayer.x, x + 50, 0.07);
        oPlayer.y = lerp(oPlayer.y, y - sprite_height/2 - 50, 0.07);
    }
	
    if (place_meeting(x + 20, y, oPlayer))
    {
		audio_stop_all();
		global.reinicou = 1;
        room_restart();
    }
}