alpha = 0;
setas = []

coord_player = [//coordenadas
	{
		"1": [284, 52],//coords das setas do player
		"2": [340, 108],
		"3": [284, 164],
		"4": [228, 108]
	},
	{
		"1": [100, 52],
		"2": [156, 108],
		"3": [100, 164],
		"4": [44, 108]
	}
]

for(var j = 0; j < 2; j ++)
{
	for(var i = 1; i <= 4; i ++)
	{
		var pos = coord_player[j][$ string(i)];
		var xx = pos[0];
		var yy = pos[1];
		var seta = instance_create_layer(xx, yy, layer, oSeta);
		seta.image_index = i - 1;
		seta.seta = i - 1;
	}
}

if (!audio_is_playing(musSLA))
{
	audio_play_sound(musSLA, 1, 0);
}