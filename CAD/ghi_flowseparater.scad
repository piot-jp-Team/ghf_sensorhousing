$fn = 90;

//bottom

module sens_flowseparater() {
difference(){    
        cylinder (r1 = 57/2, r2 = 57/2, h= 1);
        translate ([-6,-30,0])cube([60,60,6]); 
    }
    translate ([-8,-36/2,0])cube([7,36,1]); 
    difference(){ 
        translate ([-8,-55/2,0])cube([2,55,6]); 
        translate ([-10,-(42+2)/2,3])rotate([90,0,90])cylinder (r1 = 1.2, r2 = 1.2, h= 10);
        translate ([-10,(42+2)/2,3])rotate([90,0,90])cylinder (r1 = 1.2, r2 = 1.2, h= 10);
    }
  };

 sens_flowseparater();
