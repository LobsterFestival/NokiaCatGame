/// @description Trigger Pet Event
// You can write your code in this editor
show_debug_message("Pet Time!");
if (global.PETTIME == true)
{
	room_goto(PetTimeScreen);	
}
else { script_execute(CatBattleScript,3); }
