global.kills = 0;
waveKills = 0;
randomize();
function spawnEnemies(count=8) 
{
	for(i = 0; i < count; i += 1) {
		var enemyX = (random_range(0, room_width));
		var enemyY = (random_range(0, room_height));
		instance_create_layer(enemyX, enemyY, "Instances", obj_Enemy);
	}
}