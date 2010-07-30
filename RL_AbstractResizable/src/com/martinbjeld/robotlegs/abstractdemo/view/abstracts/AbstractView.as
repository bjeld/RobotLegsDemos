package com.martinbjeld.robotlegs.abstractdemo.view.abstracts
{
	import flash.display.Sprite;
	
	public class AbstractView extends Sprite
	{
		public function AbstractView()
		{
			super();
		}
		
		/**
		 * 
		 * @param sw (stage.stageWidth)
		 * @param sh (stage.stageHeight)
		 * 
		 * This method should be overridden.
		 * 
		 */		
		public function screenUpdate(sw:int, sh:int):void
		{
			
		}
	}
}