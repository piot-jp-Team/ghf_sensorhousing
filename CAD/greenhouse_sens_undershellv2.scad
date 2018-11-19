$fn = 90;

//under_shell
module undershell(){
union () {

  difference () {
 //outer  
    translate ([0,0,2]) {
        cylinder (r1 = 40, r2 = 40, h= 28);
    }    
    translate ([0,0,2]) {
      cylinder (r1 = 38.5, r2 = 38.5, h= 28);
    }
  // flow hole
    translate ([0,0,25]) cube ([100,4,4],true); 
    rotate ([0,0,15]) translate ([0,0,25])cube ([100,4,4],true); 
    rotate ([0,0,30]) translate ([0,0,25])cube ([100,4,4],true); 
    rotate ([0,0,45]) translate ([0,0,25])cube ([100,4,4],true); 
    rotate ([0,0,60]) translate ([0,0,25])cube ([100,4,4],true); 
    rotate ([0,0,75]) translate ([0,0,25])cube ([100,4,4],true); 
    rotate ([0,0,90]) translate ([0,0,25])cube ([100,4,4],true); 
    rotate ([0,0,105]) translate ([0,0,25])cube ([100,4,4],true); 
    rotate ([0,0,120]) translate ([0,0,25])cube ([100,4,4],true); 
    rotate ([0,0,135]) translate ([0,0,25])cube ([100,4,4],true); 
    rotate ([0,0,150]) translate ([0,0,25])cube ([100,4,4],true); 
    rotate ([0,0,165]) translate ([0,0,25])cube ([100,4,4],true); 
  }
  
   difference () {
 //outer  
    translate ([0,0,2]) {
        cylinder (r1 = 50, r2 = 40, h= 28);
    }    
    translate ([0,0,2]) {
      cylinder (r1 = 48.5, r2 = 38.5, h= 28);
    }
    
  // neji_lib

  translate ([43,0,2]) {

      cylinder (r1 = 6, r2 = 6, h= 28);}

  rotate ([0,0,90]) {  translate ([43,0,2]) {

      cylinder (r1 = 6, r2 = 6, h= 28);}
  }
  rotate ([0,0,180]) {  translate ([43,0,2]) {

      cylinder (r1 = 6, r2 = 6, h= 28);}
  }
   rotate ([0,0,270]) { translate ([43,0,2]) {

       cylinder (r1 = 6, r2 = 6, h= 28);}
  }
  
  }

  // neji_lib
  difference(){
union(){
  translate ([43,0,2]) {
      difference () {  cylinder (r1 = 7, r2 = 7, h= 28);
      cylinder (r1 = 6, r2 = 6, h= 28);}
  }
  rotate ([0,0,90]) {  translate ([43,0,2]) {
      difference () {  cylinder (r1 = 7, r2 = 7, h= 28);
      cylinder (r1 = 6, r2 = 6, h= 28);}
  }}
  rotate ([0,0,180]) {  translate ([43,0,2]) {
      difference () {  cylinder (r1 = 7, r2 = 7, h= 28);
      cylinder (r1 = 6, r2 = 6, h= 28);}
  }}
   rotate ([0,0,270]) { translate ([43,0,2]) {
       difference () { cylinder (r1 = 7, r2 = 7, h= 28);
       cylinder (r1 = 6, r2 = 6, h= 28);}
  }}
  };
    translate ([0,0,2]) {
      cylinder (r1 = 48.5, r2 = 38.5, h= 28);
    }
 }


  // neji_hole
  translate ([43,0,30-3]) {
      difference () {  cylinder (r1 = 6, r2 = 6, h= 3);
      cylinder (r1 = 2.3, r2 = 2.3, h= 3);}
  }
  rotate ([0,0,90]) {  translate ([43,0,30-3]) {
      difference () {  cylinder (r1 = 6, r2 = 6, h= 3);
      cylinder (r1 = 2.3, r2 = 2.3, h= 3);}
  }}
  rotate ([0,0,180]) {  translate ([43,0,30-3]) {
      difference () {  cylinder (r1 = 6, r2 = 6, h= 3);
      cylinder (r1 = 2.3, r2 = 2.3, h= 3);}
  }}
   rotate ([0,0,270]) { translate ([43,0,30-3]) {
       difference () { cylinder (r1 = 6, r2 = 6, h= 3);
       cylinder (r1 = 2.3, r2 = 2.3, h= 3);}
  }}
  
  

 }  
};

undershell();
