//Inputs
///@description Insert description here
// You can write your code in this editor
#region

ysp+=0.1
xsp=0

if keyboard_check(ord("D"))
{
	xsp =+2.5
	}
else if keyboard_check(ord("A"))
{
	xsp =-2.5
	}
if place_meeting(x,y+1,Obj_wall)
{
	ysp=0
	if keyboard_check(ord("W"))
	{
		ysp=-1
	}
}

move_and_collide(xsp,ysp,Obj_wall)
move_and_collide(xsp, ysp, obj_void)

if(place_meeting(x, y, obj_void))
{
	room_goto(player2Win)
}


	ysp += grav;

if(keyboard_check_pressed(ord("W")) && jump_current > 0)
{
    ysp = -3;
    jump_current--;
}

if(place_meeting(x, y + ysp, Obj_wall))
{
    while(!place_meeting(x, y + sign(ysp), Obj_wall))
    {
        y += sign(ysp);
    }
 
    if(ysp > 0)
    {
        jump_current = jump_number;
    }
 
    ysp = 0;
}

y += ysp;



if keyboard_check(ord("D")) {
    sprite_index = player_run;
	default_sprite = player
}

else if keyboard_check(ord("A")) 
{
    sprite_index = player_runL
	default_sprite = playerL
}
else {
    sprite_index = default_sprite;
}

if keyboard_check(ord("R")) {
    sprite_index = loading;
	default_sprite = player
}





if keyboard_check(ord("F")) {
    sprite_index = pl_hit;
	default_sprite = pl_sword
}


