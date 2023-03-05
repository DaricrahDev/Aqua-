package atools;

import flixel.FlxState;
import flixel.FlxG;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import openfl.system.System;
import flixel.system.frontEnds.SoundFrontEnd;

/*
* An useful tool that is mainly used for system functions.
*/
class Aqua {

	public static function print(text:String = "") {
		trace(text);
	}

	public static function browserSearch(url:String = "") {
		FlxG.openURL(url);
	}

	public static function exit(code:Int = 0) {
		System.exit(code);
	}

	public static function wait() {
		System.pause();
	}

	public static function resume() {
		System.resume();
	}

	public static function copyToClipboard(text:String = "") {
		System.setClipboard(text);
	}

	public static function newState(newState:FlxState) {
		Aqua.print("Switching to a new state...");
		FlxG.switchState(newState);
	}

	public static function resetState() {
		Aqua.newState(FlxG.state);
	}

	public static function getState():Aqua {
		var currentState:Dynamic = FlxG.state;
		var aquaState:Aqua = currentState;
		return aquaState;
	}
}