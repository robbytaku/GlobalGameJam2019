sprite1 = sPlayer;
sprite2 = sTestface;
sprite3 = sCap;
text[0] = "empty";
target = rOne;

with(instance_create_layer(0,0,"Instances",oCutsceneA))
{
	sprite1 = other.sprite1;
	sprite2 = other.sprite2;
	sprite3 = other.sprite3;
	target = other.target;
	text = other.text;
}