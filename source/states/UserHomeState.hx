package states;

import flixel.FlxState;

import flixel.text.FlxText;
import flixel.util.FlxColor;

import flixel.ui.FlxButton;

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
		myText.text = "Welcome Home";
		//myText.setFormat("assets/fonts/PTM55FT.ttf", 40, FlxColor.WHITE, CENTER);
		//myText.setFormat("assets/fonts/Komika_Hand.ttf", 40, FlxColor.WHITE, CENTER);
		myText.setFormat("assets/fonts/Komika_Parch.ttf", 46, FlxColor.WHITE, CENTER);
		//myText.setBorderStyle(OUTLINE, FlxColor.RED, 1);
		myText.screenCenter();
		this.add(myText);
		//
		var myButton = new FlxButton(0, 0, "Label", myCallback);
		// Custom graphics
		//myButton.loadGraphic("assets/custom.png");
		this.add(myButton);
		//
		super.create();
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
	}
	public function myCallback():Void
	{
		trace('onClick');
	}
}