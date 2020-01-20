if (global.PETTIME)
{
	global.PETTIME = false;
	PlayerInstance.x = global.playerLastX;
	PlayerInstance.y = global.playerLastY;
	room_goto(GameRoom);
}