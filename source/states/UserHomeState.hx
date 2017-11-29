package states;

import flixel.FlxState;
import flixel.FlxSprite;

import flixel.text.FlxText;
import flixel.util.FlxColor;

import flixel.ui.FlxButton;

import flixel.FlxG;

import com.saumya.abda.comps.Player_1;

import states.UserActionState;

class UserHomeState extends FlxState 
{
	override public function create():Void
	{
		trace('UserHomeState:create');
		//
		/*
		var player = new FlxSprite();
		player.loadGraphic("assets/images/idle_p2/1.png");
		add(player);
		*/
		var player1 = new Player_1();
		add(player1);
		player1.x = - 200;
		player1.y = - 640;

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
		//myText.x = 10;
		myText.y = myText.y - 100;
		this.add(myText);
		//
		var myButton = new FlxButton(0, 0, "Get Food", onGetFood);
		// Custom graphics
		//myButton.loadGraphic("assets/custom.png");
		this.add(myButton);
		//
		myButton.screenCenter();

		//
		super.create();
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
	}
	public function onGetFood():Void
	{
		trace('onGetFood');
		FlxG.switchState(new UserActionState());
	}
}