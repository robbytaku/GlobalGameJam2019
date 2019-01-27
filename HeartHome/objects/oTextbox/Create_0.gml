textPart = "test";
charCount = 0;
if (instance_exists(oPlayer)) oPlayer.hascontrol = false;
text = instance_nearest(x,y,oTextboxTrigger).text;
page = 0;
target = instance_nearest(x,y,oTextboxTrigger).target;