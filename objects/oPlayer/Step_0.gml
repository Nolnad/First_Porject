/// @description Insert description here
// You can write your code in this editor
key_right = keyboard_check(ord("D")) or keyboard_check(vk_right);
key_left  = keyboard_check(ord("A")) or keyboard_check(vk_left);
key_up    = keyboard_check(ord("W")) or keyboard_check(vk_up);
key_down  = keyboard_check(ord("S")) or keyboard_check(vk_down);
key_jump  = keyboard_check(vk_space) or keyboard_check(ord("X"));

dir_h = key_right - key_left; 
dir_v = key_down - key_up;

var len = sqrt(dir_h*dir_h + dir_v*dir_v)

if (len > 0) {
    dir_h /= len
    dir_v /= len
}

h_spd = dir_h * walk_spd;
v_spd = dir_v * walk_spd;

if(place_meeting(x+h_spd,y,oSolid))
{
	while (!place_meeting(x+sign(h_spd),y,oSolid))
	{
		x+= sign(h_spd);
	}
	h_spd = 0
}
if(place_meeting(x,y+v_spd,oSolid))
{
	while (!place_meeting(x,y+sign(v_spd),oSolid))
	{
		y+= sign(v_spd);
	}
	v_spd = 0
}

x += h_spd;
y += v_spd;