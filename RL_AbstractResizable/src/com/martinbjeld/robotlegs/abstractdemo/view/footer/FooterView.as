package com.martinbjeld.robotlegs.abstractdemo.view.footer
{
	import com.martinbjeld.robotlegs.abstractdemo.view.abstracts.AbstractView;
	
	import flash.display.Graphics;
	import flash.display.Sprite;
	
	/**
	 * 
	 * @author bjeld
	 * 
	 */	
	public class FooterView extends AbstractView
	{
		private const WIDTH:int = 700;
		private const HEIGHT:int = 200;
		
		/**
		 * container that get aligned bottom center 
		 */		
		private var _container:Sprite;
		
		/**
		 * 
		 * 
		 */		
		public function FooterView()
		{
			super();
			setupContainer();
		}
		
		private function setupContainer():void
		{
			_container = new Sprite();
			addChild(_container);
			
			var g:Graphics = _container.graphics;
			g.clear();
			g.beginFill(0x222222);
			g.drawRect(0,0,WIDTH,HEIGHT);
			g.endFill();
		}
		
		/**
		 * 
		 * @param sw
		 * @param sh
		 * 
		 */		
		override public function screenUpdate(sw:int, sh:int):void
		{
			_container.x = sw/2 - _container.width/2;
			_container.y = sh - _container.height;
		}
	}
}