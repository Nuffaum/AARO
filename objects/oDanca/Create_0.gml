alpha = 0;
setas = [];

global.seq_setas = [];
global.memoria	= [];
timer			= 180;
comecou			= false;

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

var seta;
for(var j = 0; j < 2; j ++)
{
	for(var i = 1; i <= 4; i ++)
	{
		var pos = coord_player[j][$ string(i)];
		var xx = pos[0];
		var yy = pos[1];
		seta = instance_create_layer(0, 0, layer, oSeta);
		seta.xx = xx;
		seta.yy = yy;
		seta.image_index = i - 1;
		seta.seta = i - 1;
		seta.tipo_seta = j;
	}
}
seta.control = 1;