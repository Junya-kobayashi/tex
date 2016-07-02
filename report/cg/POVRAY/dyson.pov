#include "colors.inc" 
#include "shapes.inc"
#include "woods.inc"
#include "metals.inc"
#include "stones.inc"
#include "textures.inc"

camera{
  location <15,7,13> 
  look_at<0,2.5,0>
  angle 20
} 
 
light_source{<15,1,15> color 1*White}
light_source{<6,20,0> color 2*White}
light_source{<-6,20,0> color 2*White}
light_source{<0,3.5,0> color 0.3*White}

light_source { <15, 7, 15>
	color White 
	spotlight 
	point_at <-1.5,3.5,0>
	radius 2 
	falloff 10 
	tightness 20
}

#declare fan =
union{ // fan	
	union{
		difference{
			object{
				cylinder{<0,3.5,-0.4>,<0,3.5,0.3>,1.5
			 		pigment{ color Gray05}
				}
			}
     		 	object{
				cylinder{<0,3.5,-1>,<0,3.5,1>,1.49}
		 		pigment{ color Gray05}
			}
      	}
      	
		difference{
			object{
				cylinder{<0,3.5,-0.5>,<0,3.5,-0.48>,1.5
			 		pigment{ color Gray05}
				}
			}
     		 	object{
				cylinder{<0,3.5,-1>,<0,3.5,1>,1.35}
		 		pigment{ color Gray05}
			}
      	}
      	
		difference{
			object{
				cylinder{<0,3.5,-0.5>,<0,3.5,-0.3>,1.5
			 		pigment{ color Gray05}
				}
			}
     		 	object{
				cylinder{<0,3.5,-1>,<0,3.5,1>,1.45}
		 		pigment{ color Gray05}
			}
      	}
      	finish {
			ambient .01
			diffuse 1
			phong 1
		}      	      	
	}
      
      union{
	      difference{
	      	difference{
		      	union{
					object{
						cylinder{<0,3.5,-0.45>,<0,3.5,0.35>,1.45
						}
					}
					object{
						cylinder{<0,3.5,0.33>,<0,3.5,0.44>,1.5
						}
					}
		      	}
		      	object{
		      		Sphere
		      		scale 1.58
		      		translate <0,3.5,1>
				}
	      	}
      		object{
				cylinder{<0,3.5,-1>,<0,3.5,1>,1.4
				}
      		}
      		pigment{rgb < 0.00765, 0.08294, 0.31569>}
      		finish{
      			diffuse 0.8
      			ambient 0.2
				phong 1
				phong_size 5
      		}
      	}      	
	}
}

#declare top =
union{ // part3 (top parts)
	difference{
		object{
			cylinder{<0,0,1.9>,<0,0,2.5>,0.8
			  pigment{ color Gray10 }
			  rotate < -90, 0, 0 >
			}
		}
		
		object{
			cylinder{<0,3.5,0>,<0,3.5,1.8>,1.5
				pigment{color Gray10 }
				translate<0,0,-0.9>
			}
		}
	}
}

#declare middle =
union{ // part2 (middle parts)
	difference{
		object{
			cylinder{<0,0,0.75>,<0,0,1.885>,0.8
				pigment{ color Gray10}
				rotate<-90,0,0>
			}
		}

		union{
			#declare  num=4;
			#declare  z_num=10;
			#declare rot = 4;
			#declare  d=1;

			#declare rot1=0;
			#while (rot1<=rot)
			#declare  x1=-num;
			#while  (x1<=num)
			#declare z1=0;
			#while (z1<=z_num)
			object{
				cylinder{<0,0,0>,<0,0,1>,0.014
					pigment{ color Gray50 }
					rotate < 0, 0, 90 >
				}
				translate<0,-z1*0.03,0>
				rotate<0,x1*3,0>
				rotate<0,rot1*30,0>
			}
			object{
				cylinder{<0,0,0>,<0,0,1>,0.014
					pigment{ color Gray50 }
					rotate < 0, 0, 90 >
				}
				translate<0,-0.015,0>
				translate<0,-z1*0.03,0>
				rotate<0,1.5,0>
				rotate<0,x1*3,0>
				rotate<0,rot1*30,0>
			}
			#declare z1=z1+d;
			#end
      		#declare  x1=x1+d;
			#end
			#declare rot1=rot1+d;
			#end
			scale 0.8
			rotate <0,-10,0>
			translate<0,1.1,0>
		}		
		
	}
	
	object{ // ziku
		cylinder{<0,0,0.75>,<0,0,1.5>,0.78
			pigment{ color Gray05 }
			rotate < -90, 0, 0 >
		}
	}
}

#declare under =
difference{ // part1 (under parts)

	union{
		object{ // bottom parts
    			cylinder{<0,0,0>,<0,0,	0.1>,0.8
    			pigment{ color Gray10}
    			rotate<-90,0,0>
    			}
    		}
	
		difference{ // under wave
		
		    	difference{ //basement
		    		object{
    					cylinder{<0,0,0>,<0,0,0.66>,0.8
    					pigment { Gray10 }
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
    					pigment{Gray10}
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
							pigment{color Gray10}
						}
					}
				
					object{
						cylinder{<0,0.3,0.3>,<0,0.3,0.99>,0.06
							pigment{ color Gray10}
						}
					}
					rotate<0,-65,0>
				}
	    			difference{
					object{
						cylinder{<0,0.3,0.38>,<0,0.3,0.9>,0.08
							pigment{color Gray10}
						}
					}
				
					object{
						cylinder{<0,0.3,0.3>,<0,0.3,0.99>,0.06
							pigment{ color Gray10}
						}
					}
					rotate<0,-90,0>
				}
	    			difference{
					object{
						cylinder{<0,0.3,0.38>,<0,0.3,0.9>,0.08
							pigment{color Gray10}
						}
					}
				
					object{
						cylinder{<0,0.3,0.3>,<0,0.3,0.99>,0.06
							pigment{ color Gray10}
						}
					}
					rotate<0,-115,0>
				}
    			}
		}
	
		intersection{ // toggle
			object{
				cylinder{<0,0.3,0.3>,<0,0.3,0.9>,0.065
					pigment{ color Gray10}
					rotate<0,-90,0>
				}
			}
			object{
				Sphere
				scale 0.1
				pigment{ color Gray10}
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
    					pigment{ color Gray10 }
    					rotate < 90, 0, 0 >
    				}
    			}
	    		union{
    				difference{
    					object{
    						Cube
     	   				pigment{ color Gray10 }
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
			cylinder{<0,0,0>,<0,0,5>,0.78
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
			translate<0,0.75,0>
		}
	}
	
	pigment{color Gray05}

}

object{
	Plane_XZ
	pigment{color White}
	finish{
		Glossy
	}
}


union{
	object{
		fan
		translate <0,-0.18,0>
	}
	union{
		object{
			top
			scale 0.9
		}
		object{
			middle
			scale 0.9
		}
		object{
			under
			scale 0.9
		}
		finish {
			ambient .01
			diffuse 1
			phong 1
		}
	}
}