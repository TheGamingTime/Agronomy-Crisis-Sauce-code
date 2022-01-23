package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxSubState;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import lime.app.Application;

class MemeSubState extends MusicBeatState
{
	public static var leftState:Bool = false;
	var easteregg:FlxSprite;

	override function create()
	{
		super.create();
		FlxG.sound.playMusic(Paths.music('ono'), 1.0);

        easteregg = new FlxSprite().loadGraphic(Paths.image('napkin'));
		add(easteregg);
	}

	override function update(elapsed:Float)
	{
		if (controls.ACCEPT)
		{
			leftState = true;
			trace("Oh shit, o no");
			FlxG.switchState(new MainMenuState());
			FlxG.sound.playMusic(Paths.music('freakyMenu'), 0.7);
		}
		super.update(elapsed);
	}
}
