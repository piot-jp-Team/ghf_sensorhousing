$fn = 90;

//bottom

module sens_fanstay() {
difference(){    
  union () {
      
        for ( i = [0 : 1] )
        { 
            difference(){
            rotate( [0, 0, i * 180])translate ([23.5,0,7])cube ([10,4,14],true);
            rotate( [0, 0, i * 180])translate ([23,4,11])rotate( [90, 90, 0])cylinder (r1 = 0.85, r2 = 0.85, h= 10);
            }

        }

        
        translate([12, -12, 0])cylinder (r1 = 2.5, r2 = 2.5, h= 6);
        translate([12, 12, 0])cylinder (r1 = 2.5, r2 = 2.5, h= 6);
        translate([-12, 12, 0])cylinder (r1 = 2.5, r2 = 2.5, h= 6);
        translate([-12, -12, 0])cylinder (r1 = 2.5, r2 = 2.5, h= 6); 
        
    difference(){

        cylinder (r1 = 57.6/2, r2 = 57.6/2, h= 6); //Body outer

        translate ([0,0,1.5])cylinder (r1 = 27, r2 = 27, h= 19); // Body inner
        
        cylinder (r1 = 14.5, r2 = 14.5, h= 6); // Fan hole
        


    }
  };
    translate([12, -12, 0])cylinder (r1 = 1.3, r2 = 1.3, h= 6);
    translate([12, 12, 0])cylinder (r1 = 1.3, r2 = 1.3, h= 6);
    translate([-12, 12, 0])cylinder (r1 = 1.3, r2 = 1.3, h= 6);
    translate([-12, -12, 0])cylinder (r1 = 1.3, r2 = 1.3, h= 6);
    for ( i = [0 : 1] )
    { 
        rotate( [0, 0, i * 180])translate ([20,0,3])rotate( [90, 90, 90])cylinder (r1 = 1.35, r2 = 1.35, h= 10);
    }; 
}; 
  
  
 };
 sens_fanstay();
/*
translate ([0,0,30])difference(){
cylinder (r1 = 30, r2 = 30, h= 5);
 cylinder (r1 = 58/2, r2 = 58/2, h= 5);
} 
*/