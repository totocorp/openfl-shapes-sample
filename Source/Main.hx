package;

import openfl.display.Sprite;

class Main extends Sprite
{   

	public function new()
	{
		super();

		var s: Screens = new Screens();
		addChild(s);
		s.init();
	}

}