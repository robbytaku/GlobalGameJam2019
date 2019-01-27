/// @description Update camera

//Update destination
if (instance_exists(follow))
{
	xTo = follow.x + oPlayer.flashback;
	yTo = follow.y - 200;
}

//Update object position
x += (xTo - x) / 12.5;
y += (yTo - y) / 12.5;

x = clamp(x,view_w_half,room_width-view_w_half);
y = clamp(y,view_h_half,room_height-view_h_half);

//Update camera view
camera_set_view_pos(cam,x-view_w_half,y-view_h_half);