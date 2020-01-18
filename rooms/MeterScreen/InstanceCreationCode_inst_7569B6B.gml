image_index = global.lastMeter;
image_speed = 0;
meterAddition = 0;
meterFramCap = 11;
// Did we win against the cat?
if (global.roundSuccess)
{
	meterAddition = irandom_range(2,5);
}
else 
{
	if (!image_index == 0)
	{
		if (current_second % 2 == 0)
		{
			meterAddition = 0;
		} else { meterAddition = -1; }
		
	}
}
newFrame = image_index + meterAddition;
// set to full meter frame if exceed.
if (newFrame > meterFramCap) { image_index = 10;}
if (image_index == 10)
{
	sprite_index = MeterDance;
	image_speed = 4;
	global.PETTIME = true;
}
else
{	
	image_index = image_index + meterAddition;
	global.lastMeter = image_index;
}