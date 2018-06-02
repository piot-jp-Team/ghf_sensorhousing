$fn = 90;

//under_shell
%union () {

  difference () {
 //outer  
    translate ([0,0,2]) {
        cylinder (r1 = 40, r2 = 40, h= 28);
    }    
    translate ([0,0,2]) {
      cylinder (r1 = 38, r2 = 38, h= 28);
    }

//slit
    translate ([-50,-11,2]) {
        cube ([100,22,17]); 
    }
    rotate ([0,0,45]) {
        translate ([-50,-11,2]) {
            cube ([100,22,17]); 
        }
    }
    rotate ([0,0,90]) {
        translate ([-50,-11,2]) {
            cube ([100,22,17]); 
        }
    }
    rotate ([0,0,135]) {
        translate ([-50,-11,2]) {
            cube ([100,22,17]); 
        }
    }
    
  }
  // neji_hole
  translate ([43,0,30-3]) {
      difference () {  cylinder (r1 = 5, r2 = 5, h= 3);
      cylinder (r1 = 2.3, r2 = 2.3, h= 3);}
  }
  rotate ([0,0,90]) {  translate ([43,0,30-3]) {
      difference () {  cylinder (r1 = 5, r2 = 5, h= 3);
      cylinder (r1 = 2.3, r2 = 2.3, h= 3);}
  }}
  rotate ([0,0,180]) {  translate ([43,0,30-3]) {
      difference () {  cylinder (r1 = 5, r2 = 5, h= 3);
      cylinder (r1 = 2.3, r2 = 2.3, h= 3);}
  }}
   rotate ([0,0,270]) { translate ([43,0,30-3]) {
       difference () { cylinder (r1 = 5, r2 = 5, h= 3);
       cylinder (r1 = 2.3, r2 = 2.3, h= 3);}
  }}
 }  

//bottom
//color("blue")  
%union () {
    difference () { 
          cylinder (r1 = 26, r2 = 26, h= 19);  
          cylinder (r1 = 25, r2 = 25, h= 19);
  
      }
      
      difference(){
          union(){
            cylinder (r1 = 38, r2 = 38, h= 4);
            cylinder (r1 = 40, r2 = 40, h= 2);
          }
        rotate(120)
            translate ([13,0,0]) 
                cylinder (r1 = 6.5, r2 = 6.5, h= 12);
        rotate(240)
            translate ([13,0,0]) 
                cylinder (r1 = 6.5, r2 = 6.5, h= 12);
        translate ([13,0,0]) 
            cylinder (r1 = 6.5, r2 = 6.5, h= 12);  
      }
  }
  
//kiban
%  translate ([-72/2,-48/2,35]) {
   difference () {   
    cube ([72,48,1.6]);
      translate ([3,3,0]){
          cylinder (r1 = 1.5, r2 = 1.5, h= 1.6); 
        }
        translate ([3,3+42,0]){
          cylinder (r1 = 1.5, r2 = 1.5, h= 1.6); 
        }
        translate ([3+66,3+42,0]){
          cylinder (r1 = 1.5, r2 = 1.5, h= 1.6); 
        }
        translate ([3+66,3,0]){
          cylinder (r1 = 1.5, r2 = 1.5, h= 1.6); 
        }
   }     
 }
 

  
 
 
  //kiban_base
 //color("red")
%union(){
     translate ([0,0,30]) {
      difference(){
          cylinder (r1 =52, r2 = 52, h= 2);
          translate ([-48/2,-60/2,0]){
            cube ([48,60,2]);
          }
          rotate ([0,0,0]) {translate ([43,0,0]) {
            cylinder (r1 = 2.8, r2 = 2.8, h= 2);}
          }    
          rotate ([0,0,90]) {translate ([43,0,0]) {
            cylinder (r1 = 2.8, r2 = 2.8, h= 2);}
          }         
          rotate ([0,0,180]) {translate ([43,0,0]) {
            cylinder (r1 = 2.8, r2 = 2.8, h= 2);}
          }    
          rotate ([0,0,270]) {translate ([43,0,0]) {
            cylinder (r1 = 2.8, r2 = 2.8, h= 2);}
          }    
      }
      

      translate ([-72/2,-48/2,0]) {
        translate ([3,3,2]){
            difference(){
              cylinder (r1 = 3, r2 = 3, h= 3); 
              cylinder (r1 = 1.2, r2 = 1.2, h= 3); 
            }
        }
        translate ([3,3+42,2]){
            difference(){
              cylinder (r1 = 3, r2 = 3, h= 3); 
              cylinder (r1 = 1.2, r2 = 1.2, h= 3); 
            }
        }
        translate ([3+66,3+42,2]){
            difference(){
              cylinder (r1 = 3, r2 = 3, h= 3); 
              cylinder (r1 = 1.2, r2 = 1.2, h= 3); 
            }
        }
        translate ([3+66,3,2]){
            difference(){
              cylinder (r1 = 3, r2 = 3, h= 3); 
              cylinder (r1 = 1.2, r2 = 1.2, h= 3); 
            }
        }
      }
    }
}

translate ([0,0,25]){
%union(){
    rotate_extrude()
      polygon( points=[
[0,25],
[50,25],
[54,20],
[54,0],
[53,0],
[53,19],
[49,24],
[0,24]
] );
  // neji_boss
translate ([0,0,7]) {
  translate ([43,0,0]) {
      difference () {  cylinder (r1 = 3, r2 = 3, h= 18);
      cylinder (r1 = 1.3, r2 = 1.3, h= 18);}
  }
  rotate ([0,0,90]) {  translate ([43,0,0]) {
      difference () {  cylinder (r1 = 3, r2 = 3, h= 18);
      cylinder (r1 = 1.3, r2 = 1.3, h= 18);}
  }}
  rotate ([0,0,180]) {  translate ([43,0,0]) {
      difference () {  cylinder (r1 = 3, r2 = 3, h= 18);
      cylinder (r1 = 1.3, r2 = 1.3, h= 18);}
  }}
   rotate ([0,0,270]) { translate ([43,0,0]) {
       difference () { cylinder (r1 = 3, r2 = 3, h= 18);
       cylinder (r1 = 1.3, r2 = 1.3, h= 18);}
  }}
}
}
}  
//  translate ([-50,-100,0]) {
//    cube ([100,100,105]);
// }
//}
//translate ([0,0,35])cover_top_kinoko();

module cover_top_kinoko(){
  difference () {
  scale([1,1,5/10])sphere(r = 60);
  translate ([0,0,-57])cylinder (r1 = 55, r2 = 55, h= 45);
  scale([1,1,5/10])sphere(r = 59);
  }
}

//真空成形　抜き型
translate ([-10,0,0])
color("yellow")vacuum_forming_die1();
translate ([10,0,0])
color("pink")vacuum_forming_die2();
translate ([0,0,0])
color("green")vacuum_forming_die3();
translate ([0,10,0])
color("blue")vacuum_forming_die4();
translate ([0,-10,0])
color("red")vacuum_forming_die5();

module vacuum_forming_die1(){
  difference () {
      union(){
          scale([1,1,5/10])sphere(r = 59);
          translate ([0,0,-59*5/10])cylinder (r1 = 55, r2 = 55, h= 25);
      };
      translate ([-20,-70,-60*5/10])cube([80,140,70]);
      translate ([-70,-70,-90])cube([140,140,70]);
  } 
}
module vacuum_forming_die2(){
  difference () {
      union(){
          scale([1,1,5/10])sphere(r = 59);
          translate ([0,0,-59*5/10])cylinder (r1 = 55, r2 = 55, h= 25);
      };
      translate ([-60,-70,-60*5/10])cube([80,140,70]);
      translate ([-70,-70,-90])cube([140,140,70]);
  } 
}
module vacuum_forming_die3(){
  difference () {
      union(){
          scale([1,1,5/10])sphere(r = 59);
          translate ([0,0,-59*5/10])cylinder (r1 = 55, r2 = 55, h= 25);
      };
      translate ([-100,-70,-60*5/10])cube([80,140,70]);
      translate ([20,-70,-60*5/10])cube([80,140,70]);
      translate ([-70,-100,-60*5/10])cube([140,80,70]);
      translate ([-70,20,-60*5/10])cube([140,80,70]);
      translate ([-70,-70,-90])cube([140,140,70]);
  } 
}
module vacuum_forming_die4(){
  difference () {
      union(){
          scale([1,1,5/10])sphere(r = 59);
          translate ([0,0,-59*5/10])cylinder (r1 = 55, r2 = 55, h= 25);
      };
      translate ([-100,-70,-60*5/10])cube([80,140,70]);
      translate ([20,-70,-60*5/10])cube([80,140,70]);
      translate ([-70,-60,-60*5/10])cube([140,80,70]);
      //translate ([-70,20,-60*5/10])cube([140,80,70]);
      translate ([-70,-70,-90])cube([140,140,70]);
  } 
}
module vacuum_forming_die5(){
  difference () {
      union(){
          scale([1,1,5/10])sphere(r = 59);
          translate ([0,0,-59*5/10])cylinder (r1 = 55, r2 = 55, h= 25);
      };
      translate ([-100,-70,-60*5/10])cube([80,140,70]);
      translate ([20,-70,-60*5/10])cube([80,140,70]);
      //translate ([-70,-100,-60*5/10])cube([140,80,70]);
      translate ([-70,-20,-60*5/10])cube([140,80,70]);
      translate ([-70,-70,-90])cube([140,140,70]);
  }   
}

/*
%difference () {
  union () {
    cylinder (r1 = 40, r2 = 50, h= 75);
    translate ([40,0,40]) {
      rotate ([90,0,0]) {
        rotate_extrude () {
          translate ([30,0,0]) {
            circle (r = 5);
          }
        }
      }
    }
  }
  translate ([0,0,5]) {
    cylinder (r1 = 35, r2 = 45, h= 75-2.5);
  }
}

*/