package states;

import flixel.FlxState;
import flixel.FlxSprite;

import flixel.FlxG;

import flixel.ui.FlxButton;

class UserActionState extends FlxState 
{
	override public function create():Void
	{
		construct();
		super.create();
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
	}

	private function construct():Void
	{
		FlxG.camera.bgColor = 0xFF999999;
		
		var b1:FlxButton = new FlxButton(100,100,"Breakfast",onSelectBreakfast);
		b1.loadGraphic("assets/images/ui/blueSheet.png",true,190,48);
		this.add(b1);
		
		
	}

	private function onSelectBreakfast():Void
	{
		trace('onSelectBreakfast');
	}
}