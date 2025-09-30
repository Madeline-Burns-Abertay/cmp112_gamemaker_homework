if(waveKills == 8)
{
	if(global.kills < 2048)
	{
		alarm_set(0, 60+floor(random(120)));
		waveKills = 0;
	}
}
if(global.kills >= 2048)
{
	spawnEnemies();
}