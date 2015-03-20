package
{
	import flash.display.Bitmap;
	import flash.display.Sprite;
	import flash.display.Stage;
	//import fl.motion.easing.Back; Mistä tämä tänne ilmesty?
	
	public class StartScene extends Sprite
	{
		
		public  var gamePhase:String="start";
		public  var backGround:BackGround = new BackGround(stage);
		private var startGame:StartButton = new StartButton;
		private var quitGame:QuitGame= new QuitGame;
		private var average:AverageSprite=new AverageSprite();//alusten kuvat valintaa varten
		private var troll:TrollSprite=new TrollSprite();
		private var ghost:GhostSprite=new GhostSprite();
		private var selectedShip:String="average";
		
		
		
		public function StartScene()
		{
			trace("const");
			
			startGame.x=20;
			startGame.y=150;
			
			stage.addChild(startGame);
			
			quitGame.x=20;
			quitGame.y=startGame.y+35;
			
			stage.addChild(quitGame);
			
			setupShipSelection(gamePhase);
			
			
			//avaruustausta
						
			backGround.x=-100;
			backGround.y=0;
			
			
			stage.addChildAt(backGround,0);
		}
		
		private function setupShipSelection(gamePhase:String):void//valittavat alukse ruudulle, ja toiminnallisuus(valinta) niihin
		{   
			
			stage..addChildAt(ghost,1);//stageen paikkaan 1 että tulee navbarin päälle
			
			
		}
			
			
	}
}

