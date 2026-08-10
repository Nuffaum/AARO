interacao();

if (pd_andar)
{
	x_anterior = x;

	if (oPlayer.pd_mover)
	{
		x += hsp;
	}

	if (place_meeting(x, y, oPontoAsp))
	{
	    x -= hsp;
	    hsp *= -1;
	}
}

image_xscale = sign(hsp) * tamanho;