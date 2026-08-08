layer_set_visible("Batalha", true);

for(var j = 0; j < 2; j ++)
{
	for(var i = 0; i < 4; i ++)
	{
		var inst = setas[i];
		inst.image_index = i;
		
		if struct_exists(locais[j], string([i]))
		{
			var si = string(i);
		
			inst.ir_x = locais.si;
			inst.ir_y = locais.si;
		}
	}
}