#include "colors.inc" 
#include "shapes.inc"
#include "woods.inc"
#include "metals.inc"
#include "stones.inc"
#include "textures.inc"

camera{
  location <15,7,15> 
  //location<-4,-2,-2> 
  //location <10 + (10 * clock), 0, 0>
  look_at<0,3.5,0>
  //look_at<0,5,0>
  angle 15
  //rotate<-15,-25,5>
  //translate<0,-1,0>
} 
 
light_source{<20,20,1> color 2*White}
light_source{<1,20,20> color 2*White}



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
				cylinder{<0,3.5,-0.5>,<0,3.5,-0.46>,1.5
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
	}
      
      union{
	      difference{
	      	difference{
		      	union{
					object{
						cylinder{<0,3.5,-0.4>,<0,3.5,0.35>,1.45
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
      		pigment{color rgb<0.03,0.03,1>}
      	}      	
	}
}

/*
union{ // part3 (top parts)
	difference{
		object{
			cylinder{<0,0,1.8>,<0,0,2.5>,0.8
			  pigment{ color Gray05 }
			  rotate < -90, 0, 0 >
			}
		}
		
		object{
			cylinder{<0,3.5,0>,<0,3.5,1.8>,1.5
				pigment{color Gray05 }
				translate<0,0,-0.9>
			}
		}
	}
}
*/

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