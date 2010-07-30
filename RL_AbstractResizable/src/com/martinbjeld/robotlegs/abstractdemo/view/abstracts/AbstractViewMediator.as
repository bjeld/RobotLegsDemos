package com.martinbjeld.robotlegs.abstractdemo.view.abstracts
{
	import com.martinbjeld.robotlegs.abstractdemo.signals.SignalScreenResized;
	import org.robotlegs.mvcs.Mediator;
	
	/**
	 * 
	 * @author bjeld
	 * 
	 */	
	public class AbstractViewMediator extends Mediator
	{
		[Inject]
		public var view:AbstractView;
		
		[Inject]
		public var signalScreenResized:SignalScreenResized;
		
		/**
		 * 
		 * 
		 */		
		public function AbstractViewMediator()
		{
			super();
		}
		
		/**
		 * 
		 * 
		 */		
		override public function onRegister():void
		{
			signalScreenResized.add(onScreenResized);
		}
		
		/**
		 * 
		 * @param sw
		 * @param sh
		 * 
		 */		
		private function onScreenResized(sw:int, sh:int):void
		{
			view.screenUpdate(sw, sh);
		}
	}
}