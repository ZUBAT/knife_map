#undef REQUIRE_PLUGIN
#include <updater>

#define UPDATE_URL    "https://raw.githubusercontent.com/ZUBAT/knife_map/master/updatefile.txt"
#define VER "0.0.3"
#pragma semicolon 1

public Plugin:myinfo =
{
	name = "[Knife Map Manager]",
	author = "ZUBAT",
	version = VER,
	url = "podval.pro"
};

public OnPluginStart()
{
	PrintToChatAll("[KMM] Loaded! version %i By ZUBAT", VER);
	if (LibraryExists("updater"))
    {
        Updater_AddPlugin(UPDATE_URL);
    }
	
}
public OnLibraryAdded(const String:name[])
{
    if (StrEqual(name, "updater"))
    {
        Updater_AddPlugin(UPDATE_URL);
    }
}