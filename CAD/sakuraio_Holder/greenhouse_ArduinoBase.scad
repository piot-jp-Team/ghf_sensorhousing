include <arduino.scad>

//Arduino boards
//You can create a boxed out version of a variety of boards by calling the arduino() module
//The default board for all functions is the Uno

dueDimensions = boardDimensions( DUE );
unoDimensions = boardDimensions( UNO );

//Board mockups



union() {
		//standoffs(LEONARDO, mountType=PIN);
       	standoffs(LEONARDO, mountType=TAPHOLE,topRadius=3.5);
		boardShape(LEONARDO, offset = 3);
    
        translate([-13, 5, 0]) {
            difference(){
                cube([80,7,2]);
                translate([3.5, 3.5, 0]) {
                    cylinder (r1 = 2, r2 = 2, h= 2);
                }
                translate([4.5, 3.5, 0]) {
                    cylinder (r1 = 2, r2 = 2, h= 2);
                }
                 translate([75.5, 3.5, 0]) {
                    cylinder (r1 = 2, r2 = 2, h= 2);
                }
            }
        }
        
         translate([-13, 40, 0]) {
            difference(){
                cube([80,7,2]);
                translate([3.5, 3.5, 0]) {
                    cylinder (r1 = 2, r2 = 2, h= 2);
                }
                translate([4.5, 3.5, 0]) {
                    cylinder (r1 = 2, r2 = 2, h= 2);
                }
                 translate([75.5, 3.5, 0]) {
                    cylinder (r1 = 2, r2 = 2, h= 2);
                }
            }
        }


        
	}
/*
    rotate([90, 0, 0]){
        union(){
            translate([-22, 0, 10]) {
                difference(){
                    cube([100,12,3]);
                    translate([20, 5, 0])
                        cylinder (r1 = 2, r2 = 2, h= 6);
                    translate([3*20+20, 5, 0])
                        cylinder (r1 = 2, r2 = 2, h= 6);
                }
            }
            translate([-22, 0, 10]) {
                difference(){
                    cube([14,5,35]);
                    translate([7, 0, 26]) {
                        rotate([-90, 0, 0]){
                            cylinder (r1 = 4.1, r2 = 4.1, h= 6);
                        }
                    }
                }
            }
            translate([64, 0, 10]) {
                difference(){
                    cube([14,5,35]);
                    translate([7, 0, 26]) {
                        rotate([-90, 0, 0]){
                            cylinder (r1 = 4.1, r2 = 4.1, h= 6);
                        }
                    }
                }
            }
        }
    }
    */
/*
translate([0, 0, 10]) {
	arduino();
}
*/