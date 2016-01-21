 //Change Exile_Item_PlasticBottleFreshWater to what ever you want, but make sure its in the spawn loadout.
 _bikespawned = false;
if ("Exile_Item_PlasticBottleFreshWater" in magazines player) then
	if(_bikeSpawned) exitWith {};
{
	_bikeSpawned = true;
	player removeAction DeployBike;
	sleep 1;
	_posplr = [((getPosAtl player) select 0) + 2, ((getPosAtl player) select 1) + 2, 0];
	_vehicle = createVehicle ["Exile_Bike_MountainBike", _posplr, [], 0, "NONE"];
	_vehicle setDir (getDir player);
	['Bike Deployed!',0,0.7,2,0] spawn bis_fnc_dynamictext;
}
else
{
	//Just in case.
	player removeAction DeployBike;
	['Error: Somthing went wrong!',0,0.7,2,0] spawn bis_fnc_dynamictext;
};