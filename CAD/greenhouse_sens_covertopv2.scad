$fn = 90;

module cover_top(){
union(){
    rotate_extrude()
      polygon( points=[
[0,15],
[50,15],
[57,10],
[57,0],
[56,0],
[56,9],
[49,14],
[0,14]
] );
  // neji_boss
translate ([0,0,2]) {
  translate ([43,0,0]) {
      difference () {  cylinder (r1 = 4, r2 = 4, h= 8);
      cylinder (r1 = 1.3, r2 = 1.3, h= 8);}
      translate ([4,0,0])rotate ([0,0,-90])cube([1,10,7]);
  }
  rotate ([0,0,90]) {  translate ([43,0,0]) {
      difference () {  cylinder (r1 = 4, r2 = 4, h= 8);
      cylinder (r1 = 1.3, r2 = 1.3, h= 8);}
      translate ([4,0,0])rotate ([0,0,-90])cube([1,10,7]);
  }}
  rotate ([0,0,180]) {  translate ([43,0,0]) {
      difference () {  cylinder (r1 = 4, r2 = 4, h= 8);
      cylinder (r1 = 1.3, r2 = 1.3, h= 8);}
      translate ([4,0,0])rotate ([0,0,-90])cube([1,10,7]);
  }}
   rotate ([0,0,270]) { translate ([43,0,0]) {
       difference () { cylinder (r1 = 4, r2 = 4, h= 8);
       cylinder (r1 = 1.3, r2 = 1.3, h= 8);}
       translate ([4,0,0])rotate ([0,0,-90])cube([1,10,7]);
  }}
}
}
}

cover_top();
