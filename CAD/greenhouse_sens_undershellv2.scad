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
  }
  
   difference () {
 //outer  
    translate ([0,0,2]) {
        cylinder (r1 = 50, r2 = 40, h= 28);
    }    
    translate ([0,0,2]) {
      cylinder (r1 = 48.5, r2 = 38.5, h= 28);
    }
  // flow hole
  translate ([43,0,20]) {
      cube([14,14,14],true);
  }
  rotate ([0,0,90]) {  translate ([43,0,20]) {
      cube([14,14,14],true);
  }}
  rotate ([0,0,180]) {  translate ([43,0,20]) {
      cube([14,14,14],true);
  }}
   rotate ([0,0,270]) { translate ([43,0,2]) {
      cube([14,14,14],true);
  }}
    
    
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
