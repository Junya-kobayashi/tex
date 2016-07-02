#include "colors.inc" 
#include "shapes.inc"
#include "woods.inc"
#include "metals.inc"
#include "stones.inc"
#include "textures.inc"
 
camera{
  location <-10,10,-20> 
  //location<-4,-2,-2> 
  //location <10 + (10 * clock), 0, 0>
  look_at<0,0.5,0>
  //look_at<0,5,0>
  rotate <0, 360 * clock, 0>
  angle 90
} 
 
light_source{<-1,20,-20> color 2*White}

object{ 
  Plane_XZ
    //pigment{ color Wheat}
    pigment{ checker Black White scale 10}     
    translate<0,-3,0>
}
 
// /*
union{
  object{
    Cube
      pigment{ color Red }
      scale 10*x
      scale 0.1*y
      scale 0.1*z
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
      pigment{ color Blue }
      scale 0.1*x
      scale 0.1*y
      scale 10*z
      rotate 90*z
  }

}
//*/

union{ 
   object{ 
    cylinder{<0,0,0>,<0,0,-2>,1}
      pigment{color MediumGoldenrod}
      rotate 90*x
      translate<0,1,0>
  }

  object{ 
    Cone_Y
      translate <0,4,0>
      texture { T_Stone2 }
      //pigment{color Blue}
  }

  difference{
    object{
      Cube
        pigment{MediumBlue}
        rotate 45*y
    }

    object{
      Sphere
        pigment{color White}            
        scale 1.35 
    }
  }
    translate<1.414,0,-1.414>
}

object{
  Sphere
    pigment{color Cyan}
    translate<-4,-2,0>   
}

object{
  superellipsoid{
    <0.25,0.25>
    material{M_Yellow_Glass}
    scale 2.35*x
    translate <3,-2,4>
    rotate 45*y
  }
}
 
object{
  Cube
    pigment{YellowGreen}
    rotate 45*y 
    translate<0,-2,0>
}

object{
  box{<1,-4,-1>,<5,-1,1>}
    pigment{YellowGreen}
    rotate 45*y
} 
 
object{
  Cube
    pigment{color Yellow}
    rotate 45*y 
    translate<0,-2,8>
}    

object{
  Disk_X
    pigment{Orchid}
    rotate 90*z
    translate<-2,-2,7>
     
}  

object{
  Disk_Z
    pigment{color ForestGreen}
    translate<7,-2,6> 
    //rotate 90*x
}

sky_sphere{
  pigment{
    wrinkles
    color_map{
      [ 0.3 color rgb<0.3,0.4,1.2>]
      [ 0.9 White ]
    }
    scale <1, 0.2, 0.2>
  }
}
          