package com.martinbjeld.robotlegs.abstractdemo.signals
{
	import flash.geom.Rectangle;
	import org.osflash.signals.Signal;
	
	/**
	 * 
	 * @author bjeld
	 * 
	 */	
	public class SignalScreenResized extends Signal
	{
		/**
		 * 
		 * 
		 */		
		public function SignalScreenResized()
		{
			super(int, int);
		}
	}
}