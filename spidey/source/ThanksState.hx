package;

import flixel.FlxG;
import flixel.FlxState;
import flixel.FlxSprite;
import flixel.input.keyboard.FlxKey;
import flixel.addons.display.FlxBackdrop;
import flixel.text.FlxText;
import flixel.addons.transition.FlxTransitionableState;
import flixel.addons.display.FlxBackdrop;

class ThanksState extends MusicBeatState 
{
    var warning:FlxText;
    var background:FlxSprite;
    var customTransition:FlxTransitionableState;

    override function create()
    {

        warning = new FlxText(800, 100, 800, 
        "Hello! It’s Filiazpink, the creator of Spidey!\nThank you for downloading this mod! This mod has been on hold for a REALLY\nlong time so Spidey’s design has been changed!\nSo obviously this mod isn’t canon to her actual story, it’s just like FNFverse.\nThat’s all and now, enjoy this short mod and have a great day! \n-Filia and the Spidey Dev Team", 8);
        warning.scrollFactor.set();
        warning.screenCenter();
        warning.y = 50;
        warning.alignment = CENTER;
        warning.setFormat(Paths.font("vcr.ttf"), 48);
        add(warning);

        super.create();
        CustomFadeTransition.nextCamera = FlxG.cameras.list[FlxG.cameras.list.length - 1];
    }

    override public function update(elapsed:Float):Void {
        super.update(elapsed);
        if (controls.BACK)
        {
            FlxTransitionableState.skipNextTransIn = FlxTransitionableState.skipNextTransOut = false;
            FlxG.sound.play(Paths.sound('cancelMenu'));
            MusicBeatState.switchState(new MainMenuState());
        }
    }

    override public function destroy():Void {
        // Cleanup code here
        super.destroy();
    }
}
