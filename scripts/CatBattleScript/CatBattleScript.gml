// One arg passed - Option on battle menu

// Cat Mood generated, if they are the same as chosen option,
// meter should fill
var catMood = irandom_range(0,3);
show_debug_message("CatMood set to "+ string(catMood));
show_debug_message("Player chose option " + string(argument0));
var success;
if (catMood <= argument0) { success = true; }
else { success = false; }

// ----- Set Meter ----- \\
if (success) 
{
	show_debug_message("Attempt Succeded!");
	global.roundSuccess = true;
	room_goto(MeterScreen);
	
}
else {
	show_debug_message("Attempt Failed!");
	global.roundSuccess = false;
	room_goto(MeterScreen);
}
