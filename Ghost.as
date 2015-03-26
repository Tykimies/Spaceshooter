package
{
	import flash.display.MovieClip;
	import flash.display.Stage;
	
	import Ship;
	
	public class Ghost extends Ship
	{
		private var stageRef:Stage;
		
		public function Ghost(stageRef:Stage)
		{
			this.stageRef=stageRef
			super(stageRef);
			
		}
	}
}