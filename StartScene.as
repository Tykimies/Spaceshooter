package
{
	import flash.display.Bitmap;
	import flash.display.Sprite;
	import flash.display.Stage;
	import flash.events.Event;
	import flash.events.MouseEvent;

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
			ghost.x=average.x=troll.x=quitGame.x+25;
			ghost.y=quitGame.y+50;
			average.y=ghost.y+55;
			troll.y=average.y+55;
			
			stage.addChildAt(ghost,2);//stageen paikkaan 1 että tulee navbarin päälle
			ghost.addEventListener(MouseEvent.CLICK, selectShip); 
			
			//average oletusarvoisesti valittuna, eli reunukset sille ja selectedShip arvoon average(oletusarvoisesti)
			selectedShip="average";
						
			
			var square:Sprite = new Sprite();
			stage.addChildAt(square,1);
			square.graphics.lineStyle(5,0xCC0000);
			
			square.graphics.drawRect(0,0,55,55);
			
			square.x = average.x-7;
			square.y = average.y-7;
			
			stage.addChildAt(average,2);
			average.addEventListener(MouseEvent.CLICK, selectShip); 
			
			
			stage.addChildAt(troll,2);
			troll.addEventListener(MouseEvent.CLICK, selectShip); 
			
			
		}
		
		private function selectShip(e:Event):void
		{
			
			trace("shipselection");
		}
			
			
	}
}

