package
{
	import KeyObject;
	import flash.display.MovieClip;
	import flash.display.Stage;
	import flash.events.Event;
	import flash.events.TimerEvent;
	import flash.ui.Keyboard;
	import flash.utils.Timer;
	
	public class Ship extends MovieClip
	{
		
		private var key:KeyObject;
		private var stageRef:Stage;
		
		public function Ship(stageRef:Stage)
		{
			this.stageRef=stageRef;
			key = new KeyObject(stageRef);
			
			//setup your fireTimer and attach a listener to it.
			//fireTimer = new Timer(300, 1);
			//fireTimer.addEventListener(TimerEvent.TIMER, fireTimerHandler, false, 0, true);
			
			//addEventListener(Event.ENTER_FRAME, loop, false, 0, true);
		}
	}
}