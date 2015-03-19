package
{
	import flash.display.MovieClip;
	import flash.display.Stage;
	
	public class BackGround extends MovieClip
	{
		
		private var numStars=100;//tähtien määrä
		
		public function BackGround(stageRef:Stage)
		{
			//background luo itselleen taustatähdet 
			for (var i:int = 0; i < numStars; i++)
			{
				this.addChildAt(new Star(stage), 1);
			}
		}
	}
}