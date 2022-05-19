package assets
{
	import flash.display.BitmapData;

	public class Wall extends GameObject {

		var n:int = 0;
		private var numTexturesW:Number;
		private var numTexturesH:Number;

		public function Wall(_positon: Point3d, _rotation: Point3d, _scale: Point3d, _bd: BitmapData, _polygons:Array) 
		{
			// constructor code
			position = _positon; //
			rotation = _rotation; //;
			scale = _scale;
			bd = _bd;
			polygons = _polygons;
			var poly:Polygon = polygons[0];
			numTexturesW = Math.abs(EngineMath.getDistance(poly.p1, poly.p4)) / 50;
			numTexturesH = Math.abs(EngineMath.getDistance(poly.p1, poly.p2)) / 50;
			poly.numTexturesW = numTexturesW;
			poly.numTexturesH = numTexturesH;
			
		
			
			//the makeup of the polygons is important. they need to be clockwise, otherwise we don't know if the polygon is facing us or not!
			
			
/*
			[
			
				//front
				new Polygon(
					new Point3d(-100 , -100 , 0 , 0, 0), //bottom left
					new Point3d(-100 ,  100 , 0 , 0, 1), //top left
					new Point3d( 100 ,  100 , 0 , 1, 1), //top right
					new Point3d( 100 , -100 , 0 , 1, 0), //bottom right
				bd)
				
				new Polygon(
					new Point3d(-100 * scale.x,  100 * scale.y, -100 * scale.z, 0, 1), //top left
					new Point3d( 100 * scale.x,  100 * scale.y, -100 * scale.z, 1, 1), //top right
					new Point3d( 100 * scale.x, -100 * scale.y, -100 * scale.z, 1, 0), //bottom right
				bd),
				// back
				new Polygon(new Point3d(100* scale.x, -100 * scale.y, 100 * scale.z, 1, 0), new Point3d(-100* scale.x, 100 * scale.y, 100 * scale.z, 0, 1), new Point3d(-100* scale.x, -100 * scale.y, 100 * scale.z, 0, 0), bd),
				new Polygon(new Point3d(100* scale.x, -100 * scale.y, 100 * scale.z, 1, 0), new Point3d(100* scale.x, 100 * scale.y, 100 * scale.z, 1, 1), new Point3d(-100* scale.x, 100 * scale.y, 100 * scale.z, 0, 1), bd),
				// left
				new Polygon(new Point3d(-100* scale.x, -100 * scale.y, 100 * scale.z, 0, 1), new Point3d(-100* scale.x, -100 * scale.y, -100 * scale.z, 0, 0), new Point3d(100* scale.x, -100 * scale.y, 100 * scale.z, 1, 1), bd),
				new Polygon(new Point3d(-100* scale.x, -100 * scale.y, -100 * scale.z, 0, 0), new Point3d(100* scale.x, -100 * scale.y, -100 * scale.z, 1, 0), new Point3d(100* scale.x, -100 * scale.y, 100 * scale.z, 1, 1), bd),
				// right
				new Polygon(new Point3d(-100* scale.x, 100 * scale.y, -100 * scale.z, 0, 0), new Point3d(100* scale.x, 100 * scale.y, 100 * scale.z, 1, 1), new Point3d(100* scale.x, 100 * scale.y, -100 * scale.z, 1, 0), bd),
				new Polygon(new Point3d(-100* scale.x, 100 * scale.y, -100 * scale.z, 0, 0), new Point3d(-100* scale.x, 100 * scale.y, 100 * scale.z, 0, 1), new Point3d(100* scale.x, 100 * scale.y, 100 * scale.z, 1, 1), bd),
				// top
				new Polygon(new Point3d(-100* scale.x, -100 * scale.y, 100 * scale.z, 0, 1), new Point3d(-100* scale.x, 100 * scale.y, -100 * scale.z, 1, 0), new Point3d(-100* scale.x, -100 * scale.y, -100 * scale.z, 0, 0), bd),
				new Polygon(new Point3d(-100* scale.x, -100 * scale.y, 100 * scale.z, 0, 1), new Point3d(-100* scale.x, 100 * scale.y, 100 * scale.z, 1, 1), new Point3d(-100* scale.x, 100 * scale.y, -100 * scale.z,1, 0), bd),
				// bottom
				new Polygon(new Point3d(100* scale.x, -100 * scale.y, -100 * scale.z, 0, 0), new Point3d(100* scale.x, 100 * scale.y, -100 * scale.z, 1, 0), new Point3d(100* scale.x, -100 * scale.y, 100 * scale.z, 0, 1), bd),
				new Polygon(new Point3d(100* scale.x, -100 * scale.y, 100 * scale.z, 0, 1), new Point3d(100* scale.x, 100 * scale.y, -100 * scale.z, 1, 0), new Point3d(100* scale.x, 100 * scale.y, 100 * scale.z, 1, 1), bd)
				
			];*/
			

			super();
		}

		
		
	}
}