package
{
	import flash.display.Sprite;
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
		
		
		public function GameScene(gamePhase:String,selectedShip:String)
		{//nollataan rakennusvaiheessa kaikki pelin muuttuja
			if(gamePhase=="inGame"){
				counter=0;
				score=0;
				level=0;
				setupGame(selectedShip);
			}
		}
		
		private function setupGame(selectedShip:String):void
		{
			trace("startingGame");
		}
	}
}