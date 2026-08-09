event_inherited();

venceu  = false;
sabe	= false;

if variable_global_exists("global.venceu_caranguejo")
{
	venceu = global.venceu_caranguejo;
}

morte_caranguejo = false;
alpha = 0;
target = 0;

spd = .005;
fspd= .1;