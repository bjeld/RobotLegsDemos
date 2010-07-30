package
{
	import com.martinbjeld.robotlegs.abstractdemo.view.main.MainContext;
	import com.martinbjeld.robotlegs.abstractdemo.view.main.MainView;
	
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	
	/**
	 * 
	 * @author bjeld
	 * 
	 */	
	public class RL_AbstractResizable extends Sprite
	{
		/**
		 *  
		 */		
		private var _mainContext:MainContext;
		
		/**
		 * 
		 * 
		 */		
		public function RL_AbstractResizable()
		{
			setupStage();
			setupApp();
		}
		
		/**
		 * 
		 * 
		 */		
		private function setupStage():void
		{
			stage.align = StageAlign.TOP_LEFT;
			stage.scaleMode = StageScaleMode.NO_SCALE;
		}
		
		/**
		 * 
		 * 
		 */		
		private function setupApp():void
		{
			_mainContext = new MainContext(this);
		}
	}
}