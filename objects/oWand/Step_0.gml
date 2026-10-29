key_shoot = mouse_check_button(mb_left) 

if instance_exists(oPlayer) {
    owner = oPlayer
} else {
    owner = noone
}

if !instance_exists(owner) {
    exit;
}

x = owner.x + lengthdir_x(9,dir_shoot)
y = owner.y + lengthdir_y(9,dir_shoot)

dir_shoot = point_direction(x,y,mouse_x,mouse_y)
// image anhgle
image_angle = dir_shoot
if (key_shoot) {
    if shoot_del <= 0 {
        dir_shoot += random_range(-bullet_spread,bullet_spread)
        shoot_del = shoot_del_max
        var xx = x + lengthdir_x(24,dir_shoot)
        var yy = y+ lengthdir_y(24,dir_shoot)
        with instance_create_layer(xx,yy,"Instances",oBullet) {
            dir = other.dir_shoot
        }
        
        screen_shake(2,2)
        
    }
}

shoot_del --;
