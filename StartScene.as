package
{
	import flash.display.Sprite;
	
	import fl.motion.easing.Back;
	
	public class StartScene extends Sprite
	{
		
		public  var gamePhase:String="start";
		private var startGame:StartButton = new StartButton;
		private var quitGame:QuitGame= new QuitGame;
		public  var backGround:BackGround = new BackGround;//peliobjektit tulee tämän lapsiksi siksi julkinen(jos tarpeen...)
		
		public function StartScene()
		{
			trace("const");
			
			startGame.x=20;
			startGame.y=150;
			
			stage.addChild(startGame);
			
			quitGame.x=20;
			quitGame.y=startGame.y+35;
			
			stage.addChild(quitGame);
			
			//avaruustausta
			backGround.x=-100;
			backGround.y=0;
			
			stage.addChildAt(backGround,0);
		}
	}
}

