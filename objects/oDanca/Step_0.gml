layer_set_visible("Batalha", true);

minigame_func();

if instance_number(object_index) > 1
{
	instance_destroy();
}