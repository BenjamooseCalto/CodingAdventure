//adds spawn points for all sides/players

airportRespawn = [missionNamespace, "respawn_airportN","Airport"] call BIS_fnc_addRespawnPosition;

harborRespawn = [missionNamespace, "respawn_harborCheckpoint","Harbor Checkpoint"] call BIS_fnc_addRespawnPosition;
harborBadRespawn = [missionNamespace, "respawn_harborBad","Harbor Bad Boys"] call BIS_fnc_addRespawnPosition;
harborBadRespawn1 = [missionNamespace, "respawn_harborBad_1","Harbor Bad Boys"] call BIS_fnc_addRespawnPosition;

centralRespawn = [missionNamespace, "respawn_centralCheckpoint","Central Checkpoint"] call BIS_fnc_addRespawnPosition;
centralBadRespawn = [missionNamespace, "respawn_centralBad","Central Bad Boys"] call BIS_fnc_addRespawnPosition;
centralBadRespawn1 = [missionNamespace, "respawn_centralBad_1","Central Bad Boys"] call BIS_fnc_addRespawnPosition;

homesteadRespawn = [missionNamespace, "respawn_homestead","The Homestead"] call BIS_fnc_addRespawnPosition;

rangeRespawn = [missionNamespace, "respawn_range","ARMEX Range"] call BIS_fnc_addRespawnPosition;

//REMEMBER TO COMMENT THIS OUT WHEN DONE
testingRespawn = [missionNamespace, "respawn_test","Test Spawn"] call BIS_fnc_addRespawnPosition;

