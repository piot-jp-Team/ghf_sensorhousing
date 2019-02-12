$fn = 90;

//bottom

module sens_flowseparater() {
difference(){    
        cylinder (r1 = 57/2, r2 = 57/2, h= 1);
        translate ([-6,-30,0])cube([60,60,6]); 
    }
    translate ([-8,-38/2,0])cube([7,38,1]); 
    difference(){ 
        translate ([-7,-55/2,0])cube([1,55,6]); 
        translate ([-10,-42/2,3])rotate([90,0,90])cylinder (r1 = 1.2, r2 = 1.2, h= 10);
        translate ([-10,42/2,3])rotate([90,0,90])cylinder (r1 = 1.2, r2 = 1.2, h= 10);
    }
  };

 sens_flowseparater();
