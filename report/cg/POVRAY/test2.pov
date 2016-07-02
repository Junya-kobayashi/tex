#include "colors.inc"
#include "shapes.inc"
#include "woods.inc"
#include "metals.inc"
#include "stones.inc"
#include "textures.inc"


camera{
  //location <-10,10,-20>
  location<10,4,10>
  //location<-10,1,10>
  //location <10 + (10 * clock), 0, 0>
  look_at<0,0.5,0>
  //look_at<0,5,0>
  //rotate<0,-45,0>
  angle 10
}

light_source{<20,20,1> color 2*White}
light_source{<1,20,20> color 2*White}

difference{ // part1 (under parts)

	union{
		
		
		object{ // bottom parts
    			cylinder{<0,0,0>,<0,0,	0.1>,0.8
    			pigment{ color Gray05}
    			rotate<-90,0,0>
    			}
    		}
    		
	
		difference{ // under wave
		
		    	difference{ //basement
		    		object{
    					cylinder{<0,0,0>,<0,0,0.66>,0.8
    					pigment { Gray05 }
					//pigment { color rgb<0.05,0.05,0.05>}
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
    					pigment{Gray05}
    					rotate<90,0,180>
    					translate<0,-0.3,0>
    					scale<1,0.2,1>
    				}
    				translate<0,0.8,0>
    			}
    			
    			
    			union{ //button
		    		difference{
					object{
						cylinder{<0,0.3,0.38>,<0,0.3,0.9>,0.08
							pigment{color Gray05}
						}
					}
				
					object{
						cylinder{<0,0.3,0.3>,<0,0.3,0.99>,0.06
							pigment{ color Gray05}
						}
					}
					rotate<0,-65,0>
				}
	    			difference{
					object{
						cylinder{<0,0.3,0.38>,<0,0.3,0.9>,0.08
							pigment{color Gray05}
						}
					}
				
					object{
						cylinder{<0,0.3,0.3>,<0,0.3,0.99>,0.06
							pigment{ color Gray05}
						}
					}
					rotate<0,-90,0>
				}
	    			difference{
					object{
						cylinder{<0,0.3,0.38>,<0,0.3,0.9>,0.08
							pigment{color Gray05}
						}
					}
				
					object{
						cylinder{<0,0.3,0.3>,<0,0.3,0.99>,0.06
							pigment{ color Gray05}
						}
					}
					rotate<0,-115,0>
				}
    			}
    			
		}
		
		
	
		intersection{ // toggle
			object{
				cylinder{<0,0.3,0.3>,<0,0.3,0.9>,0.065
					pigment{ color Gray05}
					rotate<0,-90,0>
				}
			}
			
			
			object{
				Sphere
				scale 0.1
				pigment{ color Gray05}
				translate<-0.8,0.3,0>
			}
			
		}
		
		
		intersection{ //button
			object{
				cylinder{<0,0.3,0.3>,<0,0.3,0.9>,0.065
					rotate<0,-90,0>
				}
			}
			object{
				Sphere
				scale 0.2
				translate<-0.62,0.3,0>
			}
			pigment{Gray05}
			rotate<0,25,0>
		}
		
		intersection{ //button
			object{
				cylinder{<0,0.3,0.3>,<0,0.3,0.9>,0.065
					pigment{ color Gray05}
					rotate<0,-90,0>
				}
			}
			object{
				Sphere
				scale 0.2
				pigment{ color Gray05}
				translate<-0.62,0.3,0>
			}
			rotate<0,-25,0>
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
    						pigment{Gray05}
    						texture {
    							pigment { rgb <0.5, 0.5, 0.5> }
    						}
    						rotate<90,0,180>
    						translate<0,-0.3,0>
    						scale<1,0.2,1>
    					}
    				}
    			}
    			translate<0,0.853,0>
    			rotate<0,180,0>
    			translate<0,-0.03,0>
    		}
    		

		
		object{ // ziku
			cylinder{<0,0,-3>,<0,0,5>,0.78
				pigment{ color Gray05 }
				rotate < 90, 0, 0 >
				translate<0,5,0>
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
	
	pigment{color Gray05}
	finish {
		ambient .01
		diffuse 1
		phong 1
	}
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






//blob {
//	threshold 0.7
//	sphere {
//		<1, 0.1, 0>, 1.5 strength 1
//		texture {
//			pigment { rgb <0.5, 0.5, 0.5> }
//		}
//	}
//	sphere {
//		<-1, 0.1, 0>, 1.5 strength 1
//		texture {
//			pigment { rgb <0.5, 0.5, 0.5> }
//		}
//	}
//	sphere {
//		<0, -0.1, 1>, 1.5 strength 1
//		texture {
//			pigment { rgb <0.5, 0.5, 0.5> }
//		}
//	}
//	sphere {
//		<0, -0.1, -1>, 1.5 strength 1
//		texture {
//			pigment { rgb <0.5, 0.5, 0.5> }
//		}
//	}
//}

//     prism{linear_sweep quadratic_spline 0,2,6,
//
//       <-1,0>,<-0.5,-1>,<0,0>,<0.5,1>,<1,0>,<0,3>
//
//       translate <-2.5,-1,2>
//     		texture {
//			pigment { rgb <0.5, 0.5, 0.5> }
//		}
//
//    }
//    prism{linear_sweep quadratic_spline 0,2,16,
//
//        <-1,-1>,<-0.5,-0.5>,<0.5,-0.5>,<1,-1>,<1,1>,<0.5,0.5>,<-0.5,0.5>,<-1,1>, <-1,-1>,
//
//        <-0.5,-0.5>,<-0.75,-0.3>,<0.75,-0.3>,<0.75,0.3>,<-0.75,0.3>,<-0.75,-0.3>,<0.75,-0.3>
//
//        translate <0,-1,2>
//          texture {
//			pigment { rgb <0.5, 0.5, 0.5> }
//		}
//
//     }

//     //?#macro  ?????????
////y=-x^3
//#macro  f(x1,z1)
//-pow(x1,3)
//#end
//
////??????????
//#declare  x_max=1;
//#declare  z_max=1;
//#declare  d=0.01;
//
//#declare  x1=-x_max;
// #while  (x1<=x_max)
//     #declare  z1=-z_max;
//             #while  (z1<=z_max)
//
//object{
//         sphere{<x1,f(x1,z1)  ,z1>,d}
//         scale  6
//         pigment{checker    color  Red  color  White*0.9}
//         no_shadow
//}
//
//             #declare  z1=z1+d;
//           #end
//       #declare  x1=x1+d;
// #end


//prism {
//	quadratic_spline
//	linear_sweep
//	-1.0,	//Base height
//	1.0,	//Top height
//	14
//	<0.29763, 0.20636>,
//	<0.91180, -0.00218>,
//	<0.97866, 0.53920>,
//	<0.72443, 0.77971>,
//	<-0.57516, 0.73413>,
//	<-0.98607, -0.55717>,
//	<-0.99604, -0.38798>,
//	<-0.89421, -0.01148>,
//	<-0.70256, 0.19647>,
//	<-0.36789, 0.22187>,
//	<-0.00679, 0.00003>,
//	<0.31565, -0.22344>,
//	<0.70827, -0.21875>,
//	<0.91180, -0.00218>
//	sturm
//	texture {
//		pigment { rgb <0.5, 0.5, 0.5> }
//	}
//	rotate<90,0,180>
//	translate<0,-0.3,0>
//	scale<1,0.7,1>
//}

//prism {
//	quadratic_spline
//	linear_sweep
//	0.0,	//Base height
//	1.0,	//Top height
//	14
//	<0.29763, 0.20636>,
//	<0.99739, 0.09351>,
//	<0.97866, 0.53920>,
//	<0.72443, 0.77971>,
//	<-0.57516, 0.73413>,
//	<-0.98607, -0.55717>,
//	<-0.99604, -0.38798>,
//	<-0.89421, -0.01148>,
//	<-0.70256, 0.19647>,
//	<-0.36789, 0.22187>,
//	<-0.01255, -0.00803>,
//	<0.34749, -0.23370>,
//	<0.70827, -0.21875>,
//	<0.99739, 0.09351>
//	sturm
//}

//prism {
//	cubic_spline
//	linear_sweep
//	0.0,	//Base height
//	1.0,	//Top height
//	14
//	<0.29763, 0.20636>,
//	<0.72470, -0.12955>,
//	<1.00084, 0.37023>,
//	<0.72443, 0.77971>,
//	<-0.57516, 0.73413>,
//	<-1.15700, 0.10302>,
//	<-1.19235, -0.19968>,
//	<-1.01420, -0.12543>,
//	<-0.66994, 0.14935>,
//	<-0.36342, 0.18499>,
//	<-0.01255, -0.00803>,
//	<0.36875, -0.18885>,
//	<0.72470, -0.12955>,
//	<0.53869, 0.12082>
//	sturm
//	texture {
//		pigment { rgb <0.5, 0.5, 0.5> }
//	}
//	rotate<90,0,180>
//	translate<3,-0.3,0>
//	scale<1,0.7,1>
//}
//
//prism {
//	cubic_spline
//	linear_sweep
//	-1.0,	//Base height
//	1.0,	//Top height
//	17
//	<-0.56975, 0.30942>,
//	<0.31200, -0.59731>,
//	<0.68997, -0.59215>,
//	<1.01333, 0.00561>,
//	<1.48547, 1.14673>,
//	<4.60923, 8.74396>,
//	<2.76597, 9.50501>,
//	<-2.11684, 7.83265>,
//	<-3.39121, 5.16941>,
//	<-1.65103, -1.81169>,
//	<-1.00840, 0.00629>,
//	<-0.69203, 0.60268>,
//	<-0.31195, 0.60479>,
//	<-0.01130, -0.00723>,
//	<-0.01625, -0.00015>,
//	<0.31200, -0.59731>,
//	<0.82985, -0.85505>
//	sturm
//	texture {
//		pigment { rgb <0.5, 0.5, 0.5> }
//	}
//	rotate<90,0,180>
//	translate<0,-0.3,0>
//	scale<1,0.15,1>
//}


//prism {
//	cubic_spline
//	linear_sweep
//	-1.0,	//Base height
//	1.0,	//Top height
//	16
//	<-0.26904, 0.13948>,
//	<0.30694, -0.69919>,
//	<0.70917, -0.69656>,
//	<1.00693, 0.00716>,
//	<1.48522, 2.31523>,
//	<0.92292, 1.79746>,
//	<-0.89340, 1.52215>,
//	<-1.73647, 1.13893>,
//	<-1.83448, -2.01299>,
//	<-1.00051, 0.00716>,
//	<-0.69184, 0.70010>,
//	<-0.31858, 0.70228>,
//	<-0.01255, -0.00803>,
//	<-0.01806, -0.00017>,
//	<0.30694, -0.69919>,
//	<0.97736, -0.99986>
//	sturm
//	texture {
//		pigment { rgb <0.5, 0.5, 0.5> }
//	}
//	rotate<90,0,180>
//	translate<0,-0.3,0>
//	scale<1,0.15,1>
//}




//		object{
//			cylinder{<0,0,0>,<0,0,3>,0.8
//			  pigment{ color Gray50 }
//			  rotate < 90, 0, 0 >
//			}
//		}


//difference{
//	object{
//	  Cube
//      	pigment{ color Gray50 }
//     		scale <0.99,2,0.99>
//     		translate<0,-1.5,0>
//	}
//
//prism {
//	cubic_spline
//	linear_sweep
//	-1.0,	//Base height
//	1.0,	//Top height
//	17
//	<0.35965, 0.51686>,
//	<-3.59274, 1.66471>,
//	<-4.74599, 1.85715>,
//	<-5.92490, 2.14119>,
//	<-5.72707, 4.99105>,
//	<-3.70729, 5.82934>,
//	<-0.01375, 5.48452>,
//	<5.62875, 5.93476>,
//	<4.99496, 4.48669>,
//	<2.21385, 2.10745>,
//	<1.00840, -0.00629>,
//	<0.39413, -0.99406>,
//	<-0.38689, -1.00627>,
//	<-0.99924, -0.01194>,
//	<-1.70232, 1.14897>,
//	<-3.59274, 1.66471>,
//	<-0.17807, 0.40875>
//	sturm
//
//	texture {
//		pigment { rgb <0.5, 0.5, 0.5> }
//	}
//	rotate<90,0,180>
//	translate<0,-0.3,0>
//	scale<1,0.15,1>
//}
//}



//  difference{
//	object{
//		cylinder{<0,0,-3>,<0,0,3>,0.8
//			pigment{ color Gray50 }
//			rotate < 90, 0, 0 >
//		}
//	}
//	union{
//		difference{
//			object{
//				Cube
//      			pigment{ color Gray50 }
//     				scale <0.99,2,0.99>
//     				translate<0,-1.5,0>
//			}
//
//			prism {
//				cubic_spline
//				linear_sweep
//				-1.0,	//Base height
//				1.0,	//Top height
//				17
//				<0.35965, 0.51686>,
//				<-3.59274, 1.66471>,
//				<-4.74599, 1.85715>,
//				<-5.92490, 2.14119>,
//				<-5.72707, 4.99105>,
//				<-3.70729, 5.82934>,
//				<-0.01375, 5.48452>,
//				<5.62875, 5.93476>,
//				<4.99496, 4.48669>,
//				<2.21385, 2.10745>,
//				<1.00840, -0.00629>,
//				<0.39413, -0.99406>,
//				<-0.38689, -1.00627>,
//				<-0.99924, -0.01194>,
//				<-1.70232, 1.14897>,
//				<-3.59274, 1.66471>,
//				<-0.17807, 0.40875>
//				sturm
//				texture {
//					pigment { rgb <0.5, 0.5, 0.5> }
//				}
//				rotate<90,0,180>
//				translate<0,-0.3,0>
//				scale<1,0.15,1>
//			}
//		}
//	}
//}
//

 /*
	union{
		difference{
			object{
				Cube
      			pigment{ color Gray50 }
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
				scale<1,0.15,1>
			}
		}
	}
// */
