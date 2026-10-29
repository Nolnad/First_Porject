
function screen_shake(_magnitude,_time){
   if instance_exists(oCamera) {
      with (oCamera)
	   {
	   	   if (_magnitude > shakeA)
	   	   {
	   		  shakeM = _magnitude;
	   		  shakeA = _magnitude;
	   		  shakeL = _time;		
	   	   }
	   }
   }
}

function move_in_dir(_spd,_dir) {
    x += lengthdir_x(_spd,_dir)
    y += lengthdir_y(_spd,_dir)
}