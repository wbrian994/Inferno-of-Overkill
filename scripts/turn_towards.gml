/// turn_towards(facingDir,targetDir,turnSpeed)

var facingDir = argument0;
var targetDir = argument1;
var turnSpeed = argument2;

var angleDiff = (facingDir - targetDir);

if(abs(angleDiff) > 180)
{
    if(facingDir > targetDir)
    {
        var temp = (360 - facingDir);
        angleDiff = -(temp + targetDir);
    }
    else
    {
        var temp = (360 - targetDir);
        angleDiff = (temp + facingDir);
    }
}
if(abs(angleDiff) < turnSpeed)
{
    turnSpeed = abs(angleDiff);
}

if(angleDiff > 1)
{
    return -turnSpeed;
}
else if(angleDiff < 1)
{
    return turnSpeed;
}
else
{
    return 0;
}