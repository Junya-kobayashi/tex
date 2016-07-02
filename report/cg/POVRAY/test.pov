#include "colors.inc" 
#include "shapes.inc"
#include "woods.inc"
#include "metals.inc"
#include "stones.inc"
#include "textures.inc"

camera{
  location <-10,6,-20> 
  //location<-4,-2,-2> 
  //location <10 + (10 * clock), 0, 0>
  look_at<0,1.3,0>
  //look_at<0,5,0>
  angle 10
} 
 
light_source{<-1,20,-20> color 2*White}
light_source{<1,20,20> color 2*White}

difference{ // part1 (under parts)
	
	union{ 
		object{ // bottom parts
			cylinder{<0,0,0>,<0,0,0.1>,0.8
			pigment{ color Gray05}
			rotate<-90,0,0>
			}
		}
		
		difference{ // under wave
			object{
				cylinder{<0,0,0>,<0,0,0.86>,0.8
				pigment{ color Gray05 }
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
				scale<1,0.2,1>
			}
			translate<0,1,0>
		}
		
		difference{ // top wave
			object{
				cylinder{<0,0,-3>,<0,0,3>,0.8
					pigment{ color Gray05 }
					rotate < 90, 0, 0 >
				}
			}
			
			union{
				difference{
					object{
						Cube
     		 				pigment{ color Gray05 }
						scale <0.99,2,0.99>
     						translate<0,-1.5,0>
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
						scale<1,0.2,1>
					}
				}
			}
			translate<0,1.05,0>
			rotate<0,180,0>
			translate<0,-0.03,0>
		}
		
		object{ // ziku
			cylinder{<0,0,0>,<0,0,3>,0.78
				pigment{ color Gray05 }
				rotate < -90, 0, 0 >
			}
		}
		
		rotate <0,90,0>
	}		
			
	object{
		cylinder{<0,0,0>,<0,0,5>,1
			pigment{color Gray05}
			rotate<-90,0,0>
			translate<0,1,0>
		}
	}
}		


///* Gizmo
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




/* umaku_itteru_toriaezu
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
	14
	<0.29763, 0.20636>,
	<0.72470, -0.12955>,
	<1.00084, 0.37023>,
	<0.72443, 0.77971>,
	<-0.57516, 0.73413>,
	<-1.15700, 0.10302>,
	<-1.19235, -0.19968>,
	<-1.01420, -0.12543>,
	<-0.66994, 0.14935>,
	<-0.36342, 0.18499>,
	<-0.01255, -0.00803>,
	<0.36875, -0.18885>,
	<0.72470, -0.12955>,
	<0.53869, 0.12082>
	sturm
	texture {
		pigment { rgb <0.5, 0.5, 0.5> }
	}
	rotate<90,0,180>
	translate<0,-0.3,0>
	scale<1,0.7,1>
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
	14
	<0.29763, 0.20636>,
	<0.72470, -0.12955>,
	<1.00084, 0.37023>,
	<0.72443, 0.77971>,
	<-0.57516, 0.73413>,
	<-1.15700, 0.10302>,
	<-1.19235, -0.19968>,
	<-1.01420, -0.12543>,
	<-0.66994, 0.14935>,
	<-0.36342, 0.18499>,
	<-0.01255, -0.00803>,
	<0.36875, -0.18885>,
	<0.72470, -0.12955>,
	<0.53869, 0.12082>
	sturm
	texture {
		pigment { rgb <0.5, 0.5, 0.5> }
	}
	rotate<90,0,180>
	translate<0,-0.3,0>
	scale<1,0.7,1>
}
		translate<0,1,0>
		rotate<180,195,0>
		translate<0,1.6,0>
      }
*/      

      
    