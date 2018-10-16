module radiationshield(sukima = 15){
//放射シールド
rotate_extrude()

polygon( points=[
   
//[55,20+sukima],
[60,20],
[65,0],
[64,0],
[59,20],
//[54,20+sukima],

] );
};

translate ([0,0,0])radiationshield(15);

module radiationsheild_boss() {
for ( i = [0 : 3] ){
rotate ([0,0,i*120]) 
linear_extrude(height = 20, center = false, convexity = 10, twist = 0)
 polygon( points=[
[64,4],
[64,-4],
[55,-4],
[55,4],
    ]);
}
};

radiationsheild_boss();

