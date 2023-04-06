package;

import openfl.events.MouseEvent;

import openfl.display.MovieClip;

@:bind class Screens extends MovieClip 
{   
    // Constants
    public static var SCREEN_1:String = "s1";
    public static var SCREEN_2:String = "s2";

    // Children
    public var mySquare: Square;
    public var btn_next: MovieClip;
    public var btn_prev: MovieClip;

    // Properties
    private var __withRotation: Bool;
 
    // Constructor
    public function new() 
    {
        super();
        stop();
    }

    public function init()
    {
        __withRotation = true;

        load(SCREEN_1);
    }

    // Methods
    public function load(s: String)
    {
        if (s == SCREEN_1)
        {   
            gotoAndStop(s);

            // Btn NEXT
            if (!btn_next.hasEventListener(MouseEvent.CLICK))
                {
                    btn_next.buttonMode = true;
                    btn_next.addEventListener(MouseEvent.CLICK, clic_btn_next);
                }
        }
        else if (s == SCREEN_2)
        {   
            gotoAndStop(s);
            mySquare.updateRotation(__withRotation);
            __withRotation = !__withRotation;

            // Btn PREV
            if (!btn_prev.hasEventListener(MouseEvent.CLICK))
            {
                btn_prev.buttonMode = true;
                btn_prev.addEventListener(MouseEvent.CLICK, clic_btn_prev);
            }
        }
    }    

    private function clic_btn_next(e: MouseEvent)
    {   
        load(SCREEN_2);
    }

    private function clic_btn_prev(e: MouseEvent)
    {
        load(SCREEN_1);
    }

}