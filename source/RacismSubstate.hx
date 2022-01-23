package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxSubState;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import lime.app.Application;

class RacismSubstate extends MusicBeatState
{
	public static var leftState:Bool = false;
	var easteregg:FlxSprite;

	override function create()
	{
		super.create();
		FlxG.sound.playMusic(Paths.music('racism'), 1.0);

        easteregg = new FlxSprite().loadGraphic(Paths.image('racism'));
		add(easteregg);
	}

	override function update(elapsed:Float)
	{
		if (controls.ACCEPT)
		{
			leftState = true;
			trace("real");
			FlxG.switchState(new MainMenuState());
			FlxG.sound.playMusic(Paths.music('freakyMenu'), 0.7);
		}
		if (FlxG.keys.justPressed.R)
		{
						PlayState.SONG;Song.loadFromJson(Highscore.formatSong('Motion',1), 'motion');
						PlayState.isStoryMode = false;
						PlayState.storyDifficulty = 0;
						LoadingState.loadAndSwitchState(new PlayState());
		}

		super.update(elapsed);
	}
	
}
