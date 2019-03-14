$fn = 90;

//bottom

module sens_pcbstay() {

  difference(){
      union(){
        //difference(){cube ([130,10,3]);translate ([0,7,0])cube ([30,3,3]);};
        cube ([130,10,3]);
        translate ([40,2+5,0])cylinder (r1 = 3, r2 = 3, h= 5);
        translate ([40+66,2+5,0])cylinder (r1 = 3, r2 = 3, h= 5);
        
      }      
      translate ([40,2+5,0])cylinder (r1 = 1.3, r2 = 1.3, h= 5);
      translate ([40+66,2+5,0])cylinder (r1 = 1.3, r2 = 1.3, h= 5);
      translate ([40+66+10,5,0])cylinder (r1 = 0.85, r2 = 0.85, h= 5);
      translate ([4,5,0])cylinder (r1 = 1.1, r2 = 1.1, h= 5);
      translate ([130-4,5,0])cylinder (r1 = 1.1, r2 = 1.1, h= 5);
  }
  
  translate([0, 0+20, 0])difference(){
      union(){
        //difference(){cube([130,10,3]);cube([30,3,3]);};
        cube ([130,10,3]);
        translate ([40,10-(2+5),0])cylinder (r1 = 3, r2 = 3, h= 5);
        translate ([40+66,10-(2+5),0])cylinder (r1 = 3, r2 = 3, h= 5);
      };      
      translate ([40,10-(2+5),0])cylinder (r1 = 1.3, r2 = 1.3, h= 5);
      translate ([40+66,10-(2+5),0])cylinder (r1 = 1.3, r2 = 1.3, h= 5);
      translate ([40+66+10,5,0])cylinder (r1 = 0.85, r2 = 0.85, h= 5);
      translate ([4,5,0])cylinder (r1 = 1.1, r2 = 1.1, h= 5);
      translate ([130-4,5,0])cylinder (r1 = 1.1, r2 = 1.1, h= 5);
  }

  
 };
 sens_pcbstay();
/*
translate ([0,0,30])difference(){
cylinder (r1 = 30, r2 = 30, h= 5);
 cylinder (r1 = 58/2, r2 = 58/2, h= 5);
} 
*/