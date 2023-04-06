package;

import openfl.display.MovieClip;

@:bind class Square extends MovieClip 
{   
    // Constructor
    public function new() {

        super();
        stop();
    }

    // Methods
    public function updateRotation(b: Bool) 
    {   
        if (b) rotation = 45; else rotation = 0;
    }
}