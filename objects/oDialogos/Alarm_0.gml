
if oPlayer.tocando == false
{
	array_delete(oPlayer.lista_dialogos, 0, array_length(oPlayer.lista_dialogos));

	for(var i = 0; i < array_length(dialogos); i ++)
	{
		array_set(oPlayer.lista_dialogos, i, dialogos[i]);
	}
	
	oPlayer.tocando = true;
}
