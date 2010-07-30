package com.martinbjeld.robotlegs.abstractdemo.view.main
{
	import com.martinbjeld.robotlegs.abstractdemo.controller.InitializeCommand;
	import com.martinbjeld.robotlegs.abstractdemo.signals.SignalInitialize;
	import com.martinbjeld.robotlegs.abstractdemo.signals.SignalScreenResized;
	import com.martinbjeld.robotlegs.abstractdemo.view.abstracts.AbstractView;
	import com.martinbjeld.robotlegs.abstractdemo.view.background.BackgroundMediator;
	import com.martinbjeld.robotlegs.abstractdemo.view.background.BackgroundView;
	import com.martinbjeld.robotlegs.abstractdemo.view.footer.FooterMediator;
	import com.martinbjeld.robotlegs.abstractdemo.view.footer.FooterView;
	import flash.display.DisplayObjectContainer;
	import org.robotlegs.mvcs.SignalContext;
	
	/**
	 * 
	 * @author bjeld
	 * 
	 */	
	public class MainContext extends SignalContext
	{
		/**
		 * 
		 * @param contextView
		 * 
		 */		
		public function MainContext(contextView:DisplayObjectContainer=null)
		{
			super(contextView);
		}
		
		/**
		 * 
		 * 
		 */		
		override public function startup():void
		{
			injector.mapSingleton(SignalScreenResized);
			signalCommandMap.mapSignalClass(SignalInitialize, InitializeCommand, true);
			
			// Maps the mediators ( Classed that extends AbstractView must "injectViewAs" AbstractView)
			mediatorMap.mapView(BackgroundView, BackgroundMediator, AbstractView);
			mediatorMap.mapView(FooterView, FooterMediator, AbstractView);
			
			mediatorMap.mapView(MainView, MainViewMediator);
			
			// Add the main view when everything is bootstrapped and ready 
			contextView.addChild(new MainView());
		}
	}
}