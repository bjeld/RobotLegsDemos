package com.martinbjeld.robotlegs.abstractdemo.controller
{
	import com.martinbjeld.robotlegs.abstractdemo.view.background.BackgroundView;
	import com.martinbjeld.robotlegs.abstractdemo.view.footer.FooterView;
	
	import org.robotlegs.mvcs.SignalCommand;
	
	/**
	 * 
	 * @author bjeld
	 * 
	 */	
	public class InitializeCommand extends SignalCommand
	{
		/**
		 * 
		 * 
		 */		
		override public function execute():void
		{
			contextView.addChild(new BackgroundView());
			contextView.addChild(new FooterView());
		}
	}
}