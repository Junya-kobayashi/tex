#include "colors.inc"
#include "shapes.inc"
#include "woods.inc"
#include "metals.inc"
#include "stones.inc"
#include "textures.inc"


camera{
  location <-10,10,-20>
  //location<10,0,10>
  //location <10 + (10 * clock), 0, 0>
  //look_at<0,0,0>
  look_at<0,5,0>
  //rotate<0,-45,0>
  rotate<0,-15,0>
  angle 50
}

light_source{<-1,20,-20> color 1*White}
light_source{<1,20,20> color 1*White}
light_source{<-1,0,-20> color 1*White}
light_source{<1,0,20> color 1*White}



		    		prism {
    					cubic_spline
    					linear_sweep
    					-1.0,	//Base height
    					1.0,	//Top height
    					17
    					<0.35965, 0.51686>,
    					<-3.59274, 1.66471>,
    					<-4.74599, 1.85715>,
    					<-5.92490, 2.14119>,
    					<-5.72707, 4.99105>,
    					<-3.70729, 5.82934>,
    					<-0.01375, 5.48452>,
    					<5.62875, 5.93476>,
    					<4.99496, 4.48669>,
    					<2.21385, 2.10745>,
    					<1.00840, -0.00629>,
    					<0.39413, -0.99406>,
    					<-0.38689, -1.00627>,
    					<-0.99924, -0.01194>,
    					<-1.70232, 1.14897>,
    					<-3.59274, 1.66471>,
    					<-0.17807, 0.40875>
    					sturm
    					pigment{Gray10}
    					rotate<-90,0,0>
    					//rotate<90,0,180>
    					//translate<0,-0.3,0>
    					//scale<1,0.2,1>
    					translate<0,2,0>
    				}
    				
object{
	Plane_XZ
	pigment{color White}
	finish{
		Glossy
	}
}


/* Gizmo
union{
  object{
    Sphere
      pigment{ color Red }
      scale 10*x
      scale 0.1*y
      scale 0.1*z
  }
  object{
  	Cube
  	  pigment{ color Black }
  	  scale 0.11
  	  translate <1,0,0> 
  }
  object{
    Cube
      pigment{ color Green }
      scale 0.1*x
      scale 10*y
      scale 0.1*z
      rotate 90*y
  }
    object{
  	Cube
  	  pigment{ color Black }
  	  scale 0.11
  	  translate <0,1,0> 
  }
  object{
    Cube
      pigment{ color Blue }
      scale 0.1*x
      scale 0.1*y
      scale 10*z
      rotate 90*z
  }
    object{
  	Cube
  	  pigment{ color Black }
  	  scale 0.11
  	  translate <0,0,1> 
  }
}
// */

/*
union{
  difference{
    object{
      cylinder{<0,0,0>,<0,0,3>,0.8
        pigment{ color Gray50 }
        rotate < 90, 0, 0 >
  		}
  	}

    prism {
    	cubic_spline
    	linear_sweep
    	-1.0,	//Base height
    	1.0,	//Top height
    	17
    	<0.35965, 0.51686>,
    	<-3.59274, 1.66471>,
    	<-4.74599, 1.85715>,
    	<-5.92490, 2.14119>,
    	<-5.72707, 4.99105>,
    	<-3.70729, 5.82934>,
    	<-0.01375, 5.48452>,
    	<5.62875, 5.93476>,
    	<4.99496, 4.48669>,
    	<2.21385, 2.10745>,
    	<1.00840, -0.00629>,
    	<0.39413, -0.99406>,
    	<-0.38689, -1.00627>,
    	<-0.99924, -0.01194>,
    	<-1.70232, 1.14897>,
    	<-3.59274, 1.66471>,
    	<-0.17807, 0.40875>
    	sturm

    	texture {
    		pigment { rgb <0.5, 0.5, 0.5> }
    	}
    	rotate<90,0,180>
    	translate<0,-0.3,0>
    	scale<1,0.15,1>
    }
    translate<0,1,0>
    rotate<0,15,0>
  }

  difference{
		object{
			cylinder{<0,0,0>,<0,0,3>,0.8
			  pigment{ color Gray50 }
			  rotate < 90, 0, 0 >
			}
		}

    prism {
    	cubic_spline
    	linear_sweep
    	-1.0,	//Base height
    	1.0,	//Top height
    	17
    	<0.35965, 0.51686>,
    	<-3.59274, 1.66471>,
    	<-4.74599, 1.85715>,
    	<-5.92490, 2.14119>,
    	<-5.72707, 4.99105>,
    	<-3.70729, 5.82934>,
    	<-0.01375, 5.48452>,
    	<5.62875, 5.93476>,
    	<4.99496, 4.48669>,
    	<2.21385, 2.10745>,
    	<1.00840, -0.00629>,
    	<0.39413, -0.99406>,
    	<-0.38689, -1.00627>,
    	<-0.99924, -0.01194>,
    	<-1.70232, 1.14897>,
    	<-3.59274, 1.66471>,
    	<-0.17807, 0.40875>
    	sturm

    	texture {
    		pigment { rgb <0.5, 0.5, 0.5> }
    	}
    	rotate<90,0,180>
    	translate<0,-0.3,0>
    	scale<1,0.15,1>
    }
		translate<0,1,0>
		rotate<180,105,0>
		translate<0,1.7,0>
  }
  object{
    cylinder{<0,0,0>,<0,0,10>,0.78
		  pigment{ color Gray50 }
		  rotate < 90, 0, 0 >
		  translate<0,5,0>
		}
  }
  rotate<0,-15,0>
}

*/


/*
	object{
		cylinder{<0,0,0>,<0,0,3>,0.96
			pigment{color Black}
			rotate<90,0,0>
			translate<0,2,0>
		}	
	}

difference{
	object{
		cylinder{<0,0,0>,<0,0,3>,1
			pigment{color Gray50}
			rotate<90,0,0>
			translate<0,2,0>
		}	
	}

union{
#declare  num=6;
#declare  z_num=12;
#declare rot = 4;
#declare  d=1;

#declare rot1=0;
#while (rot1<=rot)
#declare  x1=-num;
 #while  (x1<=num)
 #declare z1=0;
   #while (z1<=z_num)
object{
	cylinder{<0,0,0>,<0,0,3>,0.014
		pigment{ color Gray50 }
		rotate < 0, 0, 90 >
	}
	translate<0,-z1*0.03,0>
	rotate<0,x1*3,0>
	rotate<0,rot1*15,0>
}
object{
		cylinder{<0,0,0>,<0,0,3>,0.014
		pigment{ color Gray50 }
		rotate < 0, 0, 90 >
	}
	translate<0,-0.015,0>
	translate<0,-z1*0.03,0>
	rotate<0,1.5,0>
	rotate<0,x1*3,0>
	rotate<0,rot1*15,0>
}
	#declare z1=z1+d;
	#end
       #declare  x1=x1+d;
 #end
 #declare rot1=rot1+d;
 #end
}

}
*/

//union{
//#declare  num=5;
//#declare  z_max=1;
//#declare  d=1;
//
//#declare  x1=-num;
// #while  (x1<=num)
//object{
//	cylinder{<0,0,0>,<0,0,3>,0.03
//		pigment{ color Gray50 }
//		rotate < 0, 0, 90 >
//	}
//	rotate<0,x1*2,0>
//}
//       #declare  x1=x1+d;
// #end
//}
