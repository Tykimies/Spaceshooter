package
{
	import flash.display.DisplayObject;
	import flash.display.SimpleButton;
	
	public class QuitGame extends SimpleButton
	{
		public function QuitGame(upState:DisplayObject=null, overState:DisplayObject=null, downState:DisplayObject=null, hitTestState:DisplayObject=null)
		{
			super(upState, overState, downState, hitTestState);
		}
	}
}