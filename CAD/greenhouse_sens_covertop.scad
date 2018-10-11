$fn = 90;

module cover_top(){
union(){
    rotate_extrude()
      polygon( points=[
[0,25],
[50,25],
[54,20],
[54,0],
[53,0],
[53,19],
[49,24],
[0,24]
] );
  // neji_boss
translate ([0,0,7]) {
  translate ([43,0,0]) {
      difference () {  cylinder (r1 = 4, r2 = 4, h= 18);
      cylinder (r1 = 1.3, r2 = 1.3, h= 18);}
      translate ([4,0,0])rotate ([0,0,-90])cube([1,7,14]);
  }
  rotate ([0,0,90]) {  translate ([43,0,0]) {
      difference () {  cylinder (r1 = 4, r2 = 4, h= 18);
      cylinder (r1 = 1.3, r2 = 1.3, h= 18);}
      translate ([4,0,0])rotate ([0,0,-90])cube([1,7,14]);
  }}
  rotate ([0,0,180]) {  translate ([43,0,0]) {
      difference () {  cylinder (r1 = 4, r2 = 4, h= 18);
      cylinder (r1 = 1.3, r2 = 1.3, h= 18);}
      translate ([4,0,0])rotate ([0,0,-90])cube([1,7,14]);
  }}
   rotate ([0,0,270]) { translate ([43,0,0]) {
       difference () { cylinder (r1 = 4, r2 = 4, h= 18);
       cylinder (r1 = 1.3, r2 = 1.3, h= 18);}
       translate ([4,0,0])rotate ([0,0,-90])cube([1,7,14]);
  }}
}
}
}

translate ([0,0,25]) cover_top();
