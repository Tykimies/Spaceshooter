package
{
	import flash.display.MovieClip;
	import flash.display.Stage;
	import flash.events.Event;
		
	public class Star extends MovieClip
	{
		private var stageRef:Stage;//viittaus stageen. Ilmeisesti frameEvenlistener pitää lisätä aina stageen
		private var speed:Number; //taustan "vauhdikkuus"
		
		public function Star(stageRef:Stage)
		{
			this.stageRef = stageRef;//viittaus siihen stageen
			setupStar(true);//arvotaan ja asetetaan tähti
			
			addEventListener(Event.ENTER_FRAME, loop, false, 0, true);//liikuttaa tähteä frame framelta
		}
		
		private function setupStar(randomizeY:Boolean = false):void
		{
			y = randomizeY ? Math.random()*600 : 0;
			x = Math.random()*800;//y ja x sijainnit 
			alpha = Math.random();//läpinäkyvyys
			rotation = Math.random()*360;//käännetään
			scaleX = Math.random();//koko y ja x suunnissa
			scaleY = Math.random();
			
			speed = 1.5 + Math.random()*2;//nopeus
		}
		
		private function loop(event:Event):void
		{
			y += speed;
			
			if (y > 600)//jos menee laidan yli niin arvotaan uudet arvot ja siirretään se yläreunaan uudelleen
				setupStar();
		}
	}
}