count = 0;
sprite1 = 0;
sprite2 = 0;
sprite3 = 0;
target = rCredits;
text[0] = "Sweetie, we need to go inside... it's getting late.";
text[1] = "No mommy... he'll come home today... I know it...";
text[2] = "Sweetie...";

with (instance_create_layer(0,0,"Dialogue",oTextboxFace))
{
	target = 0;
	text = other.text;
	
}

transition = false;