// STEP EVENT
if instance_exists(oPlayer) {
    follow = (oPlayer);
} else {
    follow = oCamera;
}

targ_x = oPlayer.x
targ_y = follow.y

// Update Mouse Pos
var middir    = point_direction(targ_x,targ_y,mouse_x,mouse_y);
var pointdist = point_distance (targ_x,targ_y,mouse_x,mouse_y);

var maxdist   = pointdist/mouse_weight
midistx = lengthdir_x(maxdist,middir);
midisty = lengthdir_y(maxdist,middir);

xTo = ((targ_x) + midistx + targ_x) / 2;
yTo = ((targ_y) + midisty + targ_y) / 2;

x += (xTo - x) / 7;
y += (yTo - y) / 7;


viewWidthHalf = camera_get_view_width(cam)   * 0.5;
viewHeightHalf = camera_get_view_height(cam) * 0.5;

// Screen Shake
shakeA = max(0, shakeA - ((1/shakeL) * shakeM));

x += random_range(-shakeA,shakeA)
y += random_range(-shakeA,shakeA)

camera_set_view_pos(cam,x-viewWidthHalf,y-viewHeightHalf);