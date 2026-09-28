if (ds_list_find_index(global.saveList, id) == -1)
{
	ds_list_add(global.saveList, id);
	global.collect += collectAmount;
}