package
{
	import flash.display.Sprite;
	import flash.display.Stage;
	import flash.text.TextField;

	
	public class GameScene extends Sprite
	{
		/*
		GameScene
				
		+ logo:sprite
				
		+ heatBoard:Shape;
		
		
		+ changeLevel(): 
		
		+ gameLoop();
		
		+setupGame(selectedShip:String);
		*/
		private var level:int;
		//gamePhase:String; on public eli käytössä jo täälä
		private var gameOn:Boolean=false;
		private var counter:int=0;
		private var scoreBoard:TextField=new TextField();
		private var score:int=0;
		private var stageRef:Stage;
		//private var backGround:BackGround;
		
		
		public function GameScene(gamePhase:String,selectedShip:String, stageRef:Stage, backGround:BackGround)
		{//nollataan rakennusvaiheessa kaikki pelin muuttuja
			this.stageRef=stageRef;
			if(gamePhase=="inGame"){
				counter=0;
				score=0;
				level=0;
				setupGame(selectedShip, backGround);
			}
		}
		
		private function setupGame(selectedShip:String, backGround:BackGround):void
		{
			trace("startingGame");
			//luodaan alus riippuen pelaajan selectedShipvalinnasta
			if(selectedShip=="ghost"){var playerShip:Ghost=new Ghost(stageRef);
			backGround.addChild(playerShip);
			}
			//if(selectedShip=="average"){var playerShip:Average=new Average(stage);}
			//if(selectedShip=="troll"){var playerShip:Troll=new Troll(stage);}
			
			
		}
	}
}