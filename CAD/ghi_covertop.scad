$fn = 90;

module cover_top(){
difference () {  
union(){
    rotate_extrude()
      polygon( points=[
[0,15],
[36,15],
[37,0],
[36,0],
[35,14],
[0,14]
] );
    
  translate ([28,0,0]) {
      translate ([0,3,0])rotate ([0,0,-90])cube([6,8,15]);
  }
  rotate ([0,0,90]) {  translate ([28,0,0]) {
      translate ([0,3,0])rotate ([0,0,-90])cube([6,8,15]);
  }}
  rotate ([0,0,180]) {  translate ([28,0,0]) {
      translate ([0,3,0])rotate ([0,0,-90])cube([6,8,15]);
  }}
   rotate ([0,0,270]) { translate ([28,0,0]) {
        translate ([0,3,0])rotate ([0,0,-90])cube([6,8,15]);
  }}     

};
cylinder (r1 = 30, r2 = 30, h= 5);
translate ([29,0,2])rotate ([0,90,0])cylinder (r1 = 1.1, r2 = 1.1, h= 8);   
rotate ([0,0,90])translate ([29,0,2])rotate ([0,90,0])cylinder (r1 = 1.1, r2 = 1.1, h= 8);  
rotate ([0,0,180])translate ([29,0,2])rotate ([0,90,0])cylinder (r1 = 1.1, r2 = 1.1, h= 8); 
rotate ([0,0,270])translate ([29,0,2])rotate ([0,90,0])cylinder (r1 = 1.1, r2 = 1.1, h= 8);   
}
}
cover_top();

