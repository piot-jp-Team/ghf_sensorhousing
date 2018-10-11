$fn = 90;


//kiban
module kiban(){
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
rotate ([0,0,45]) translate ([-72/2,-48/2,35]) kiban();