
#region

ysp+=0.1
xsp=0

if keyboard_check(ord("L"))
{
    xsp =+2.5
    }
else if keyboard_check(ord("J"))
{
    xsp =-2.5
    }
if place_meeting(x,y+1,Obj_wall)
{
    ysp=0
    if keyboard_check(ord("I"))
    {
        ysp=-1
    }
}

move_and_collide(xsp,ysp,Obj_wall)
move_and_collide(xsp, ysp, obj_void)

if(place_meeting(x, y, obj_void))
{
	room_goto(player1Win)
}



    ysp += grav;

if(keyboard_check_pressed(ord("I")) && jump_current > 0)
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

if keyboard_check(ord("L")) {
    sprite_index = HL_runL
    default_sprite = HL_player
}

else if keyboard_check(ord("J")) 
{
    sprite_index = HL_run
    default_sprite = HL_player
}
else {
    sprite_index = default_sprite;
}

if keyboard_check(ord("P")) {
    sprite_index = loading;
	default_sprite = HL_player
}