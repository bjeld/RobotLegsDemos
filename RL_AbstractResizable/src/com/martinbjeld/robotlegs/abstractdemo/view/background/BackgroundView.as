package com.martinbjeld.robotlegs.abstractdemo.view.background
{
	import com.martinbjeld.robotlegs.abstractdemo.view.abstracts.AbstractView;
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.Graphics;
	
	/**
	 * 
	 * @author bjeld
	 * 
	 */	
	public class BackgroundView extends AbstractView
	{
		[Embed(source="tile.png")]
		private var BG_ASSET:Class;
		
		private var _tileData:BitmapData;
		
		/**
		 * 
		 * 
		 */		
		public function BackgroundView()
		{
			super();
			
			var b:Bitmap = new BG_ASSET() as Bitmap;
			_tileData = b.bitmapData;
		}
		
		/**
		 * 
		 * @param sw
		 * @param sh
		 * 
		 */		
		override public function screenUpdate(sw:int, sh:int):void
		{
			var g:Graphics = this.graphics;
			g.clear();
			g.beginBitmapFill(_tileData);
			g.drawRect(0,0, sw, sh);
			g.endFill();
		}
		
	}
}