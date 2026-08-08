alpha = 0;
setas = []

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
		seta.tipo_seta = j;
	}
}

if (!audio_is_playing(musSLA))
{
	//audio_play_sound(musSLA, 1, 0);
}

//jogo em si
tipo_seta	= 0;//0 = caranguejo, 1 = Naira
bpm_jogo	= 60;//jogo vai ficar no começo 60 bpm
pos_bpm		= bpm_jogo * 2;//120 bpm no final do jogo
beat		= 60//((bpm_jogo / 60) * 60) * 16;//um beat do jogo, o * 4 é pra ser uma nota de semibreve
timer_beat	= 0;
dir_seta	= image_index;
alpha_nota	= 0;
contagem	= 0;
contagem_max= 8;
decidiu		= false;
alarm_seta	= false;
turno		= 0;

comeco = function()
{
	if comecou == false
	{
		var tempo	= (timer / 60)
		var fr		= frac(tempo);
		var tam		= fr * 15;
	
		timer --;
		draw_set_halign(1);
		draw_set_valign(1);
		draw_text_transformed(view_wport[0] / 2, view_hport[0] / 2, floor(tempo) + 1, tam, tam, 0);
		draw_set_halign(-1);
		draw_set_valign(-1);
		
		if timer <= 0
		{
			comecou = true;//começo o minigame
		}
	}
}

///@function minigame_func()
minigame_func = function()
{
	if comecou == true
	{
		if turno == 0//turno do caranguejo
		{
			if alarm_seta == false
			{
				alarm[0] = beat;
				alarm_seta = true;
				
				if array_length(global.memoria) >= 4
				{
					turno = 1;
					array_delete(global.memoria, 0, array_length(global.memoria));
				}
			}
		}
		else//turno do player
		{
			var dir, esq, cim, bai;
				dir = keyboard_check_pressed(ord("D")) or keyboard_check_pressed(vk_right),
				esq = keyboard_check_pressed(ord("A")) or keyboard_check_pressed(vk_left),
				cim = keyboard_check_pressed(ord("W")) or keyboard_check_pressed(vk_up),
				bai = keyboard_check_pressed(ord("S")) or keyboard_check_pressed(vk_down)
			
			var keys = dir or esq or cim or bai;
			
			switch(keys)
			{
				case dir:
					
				break;
			}
		}
	}
}

///@function decidir()
decidir = function()
{
	randomize();
	var decisao = irandom(4);
	var num = instance_number(oSeta);
	var lista = [];
	
	for(var i = 0; i < num; i ++)
	{
		var inst = instance_find(oSeta, i);
		//array_push(lista, inst.id);
		
		if inst.tipo_seta == 0
		{
			if inst.image_index == decisao
			{
				array_push(global.memoria, decisao);
				inst.alpha_nota = 1;
			}
		}
	}
	
	
}