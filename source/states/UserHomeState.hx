package states;

import flixel.FlxState;

import flixel.text.FlxText;
import flixel.util.FlxColor;

class UserHomeState extends FlxState 
{
	override public function create():Void
	{
		trace('UserHomeState:create');
		//
		//var myText = new flixel.text.FlxText(0, 0, 0, "Welcome Back", 34);
		//myText.screenCenter();
		//var myText = new FlxText(0, 0, 500); // x, y, width
		var myText = new FlxText(0, 0, 0); // x, y, width
		myText.text = "Hello World";
		//myText.setFormat("assets/fonts/PTM55FT.ttf", 40, FlxColor.WHITE, CENTER);
		//myText.setFormat("assets/fonts/Komika_Hand.ttf", 40, FlxColor.WHITE, CENTER);
		myText.setFormat("assets/fonts/Komika_Parch.ttf", 40, FlxColor.WHITE, CENTER);
		//myText.setBorderStyle(OUTLINE, FlxColor.RED, 1);
		myText.screenCenter();
		this.add(myText);
		//
		super.create();
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
	}
}