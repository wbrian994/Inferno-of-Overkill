/// turn_towards(facingDir,targetDir,turnSpeed)

var facingDir = argument0;
var targetDir = argument1;
var turnSpeed = argument2;

var len = lengthdir_y(45, targetDir - facingDir);

return -median(-turnSpeed,len,turnSpeed);