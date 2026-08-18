if (place_meeting(x, y, oPlayer))
{
	tocando = 1;
}
else
{
	tocando = 0;
}

if (!audio_is_playing(sndSplat) && estava_tocando != tocando && tocando == 1)
{
	audio_play_sound(sndSplat, 2, 0);
}

estava_tocando = tocando;