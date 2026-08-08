//var transic = instance_create_layer(0, 0, "Batalha", oTransicao);
//transic.rm_goto = "nenhuma sala";
//transic.starting = false;

alpha = 0;
setas = []

locais = [//coordenadas
	{
		"1": [110, 110],//coords das setas do player
		"2": [220, 220],
		"3": [240, 10],
		"4": [30, 20]
	},
	
	{
		"1": [0, 0],
		"2": [0, 0],
		"3": [0, 0],
		"4": [0, 0]
	}
]

for(var j = 0; j < 2; j ++)
{
	for(var i = 0; i < 4; i ++)
	{
		var inst = instance_create_layer(0, -32, layer, oSeta);
		inst.image_index = i;
		
		setas[i] = inst.id;
	}
}