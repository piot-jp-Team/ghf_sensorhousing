$fn = 90;

module kibanbase(){
union(){
    difference(){
    cylinder (r1 =49, r2 = 49, h= 6);
    cylinder (r1 =48, r2 = 48, h= 6);
    };

      difference(){
          cylinder (r1 =52, r2 = 52, h= 2);
          rotate ([0,0,45]) {translate ([-48/2,-60/2,0]){
            cube ([48,60,2]);
          }}
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
      
        rotate ([0,0,45]) {
          translate ([-72/2,-46/2,0]) {
            translate ([3,3,2]){
                difference(){
                  cylinder (r1 = 3, r2 = 3, h= 3); 
                  cylinder (r1 = 1.2, r2 = 1.2, h= 3); 
                }
            }
            translate ([3,3+40,2]){
                difference(){
                  cylinder (r1 = 3, r2 = 3, h= 3); 
                  cylinder (r1 = 1.2, r2 = 1.2, h= 3); 
                }
            }
            translate ([3+66,3+40,2]){
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
};

kibanbase();

