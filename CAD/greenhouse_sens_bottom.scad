$fn = 90;

//bottom

module sens_bottom() {
  union () {
     
    difference(){
        union(){
            cylinder (r1 = 26, r2 = 26, h= 19);
            cylinder (r1 = 38, r2 = 38, h= 4);
            cylinder (r1 = 40, r2 = 40, h= 2);
        }
        translate ([0,0,1.5])cylinder (r1 = 25, r2 = 25, h= 19);
        rotate(120)
            translate ([13,0,0]) 
                cylinder (r1 = 6.5, r2 = 6.5, h= 10);
        rotate(240)
            translate ([13,0,0]) 
                cylinder (r1 = 6.5, r2 = 6.5, h= 10);
        translate ([13,0,0]) 
            cylinder (r1 = 6.5, r2 = 6.5, h= 10);  
        rotate(60)
            translate ([30,0,0]) 
                cylinder (r1 = 1.2, r2 = 1.2, h= 10);
        rotate(180)
            translate ([30,0,0]) 
                cylinder (r1 = 1.2, r2 = 1.2, h= 10);
        rotate(300)
            translate ([30,0,0]) 
                cylinder (r1 = 1.2, r2 = 1.2, h= 10);
      
    }
  }
 }
 
