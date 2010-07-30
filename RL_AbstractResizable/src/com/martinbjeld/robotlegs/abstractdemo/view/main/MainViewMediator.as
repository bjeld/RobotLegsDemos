package com.martinbjeld.robotlegs.abstractdemo.view.main
{
	import com.martinbjeld.robotlegs.abstractdemo.signals.SignalInitialize;
	import com.martinbjeld.robotlegs.abstractdemo.signals.SignalScreenResized;
	import flash.display.Stage;
	import flash.events.Event;
	import org.robotlegs.mvcs.Mediator;

	/**
	 * 
	 * @author bjeld
	 * 
	 */	
	public class MainViewMediator extends Mediator
	{
		[Inject]
		public var signalScreenResized:SignalScreenResized;
		
		[Inject]
		public var signalInitialize:SignalInitialize;
		
		[Inject]
		public var view:MainView;
		
		/**
		 * 
		 * 
		 */		
		public function MainViewMediator()
		{
			super();
		}
		
		/**
		 * 
		 * 
		 */		
		override public function onRegister():void
		{
			// #1
			view.stage.addEventListener(Event.RESIZE, onStageResize);
			// #2
			signalInitialize.dispatch();
			// #3
			onStageResize(null);
		}
		
		/**
		 * 
		 * @param event
		 * 
		 */		
		private function onStageResize(event:Event):void
		{
			signalScreenResized.dispatch(view.stage.stageWidth, view.stage.stageHeight);
		}
	}
}