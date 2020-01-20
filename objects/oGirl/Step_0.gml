/// @description Frame Tick Step

//-------------- Input --------------\\
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_up);

image_speed = 0;
//Movement

// 1 for right , -1 for left
var _move = key_right - key_left;

horiz_speed = _move * walkspd;
vert_speed = vert_speed + grav;

// 1 px below oGirl
if (place_meeting(x,y+1,PlatformParent)) && (key_jump)
{
	vert_speed = -jumpsp;
}

//-------------- Horiz Collision --------------\\
if (place_meeting(x+horiz_speed,y,PlatformParent))
{
	while (!place_meeting(x+sign(horiz_speed),y,PlatformParent))
	{
		x = x + sign(horiz_speed);
	}
	// Wall Hit
	horiz_speed = 0;
}


//-------------- Vert Collision --------------\\
if (place_meeting(x,y+vert_speed,PlatformParent))
{
	while (!place_meeting(x,y+sign(vert_speed),PlatformParent))
	{
		y = y + sign(vert_speed);
	}
	// Wall/Floor Hit
	vert_speed = 0;
}
var onFloor = place_meeting(x,y+1,PlatformParent);


if (place_meeting(x+horiz_speed,y,NPCParent))
{
	while (!place_meeting(x+sign(horiz_speed),y,NPCParent))
	{
		x = x + sign(horiz_speed);
	}
	// Wall Hit
	horiz_speed = 0;
}
x = x + horiz_speed;

if (place_meeting(x,y+vert_speed,NPCParent))
{
	while (!place_meeting(x,y+sign(vert_speed),NPCParent))
	{
		y = y + sign(vert_speed);
	}
	// Wall/Floor Hit
	vert_speed = 0;
}
y = y + vert_speed;

//-------------- Animation --------------\\

// Jumping - Frame 1
if(!onFloor)
{	
	if (sign(vert_speed >= 0))
	{
		sprite_index = RoboJumping;
		image_index = 2;
	}
	else 
	{
		sprite_index = RoboJumping;
		image_index = 3;
	}
} 
else 
{
	if(sign(horiz_speed) = 1)
	{
		image_speed = 2;
		sprite_index = RoboWalk1;		
	} 	
}
