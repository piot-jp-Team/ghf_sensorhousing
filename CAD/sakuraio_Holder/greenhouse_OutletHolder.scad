difference(){
linear_extrude(height = 29, center = false, convexity = 10, twist = 0)
 polygon( points=[
[0,0],
[0,31],
[29,31],
[29,0]
]);
linear_extrude(height = 29, center = false, convexity = 10, twist = 0)
 polygon( points=[
[2.25,2.25],
[2.25,28.75],
[26.75,28.75],
[26.75,2.25]
]);
    translate ([26.5,15,22])cube ([3,5,20]); 
};
difference(){
translate ([0,-8.5,0])cube ([2,48,20]); 
rotate([0,90,0])translate ([-14.5,35,0])cylinder (r1 = 1.6, r2 = 1.6, h= 3);
rotate([0,90,0])translate ([-4   ,35,0])cylinder (r1 = 1.6, r2 = 1.6, h= 3);
rotate([0,90,0])translate ([-14.5,-4,0])cylinder (r1 = 1.6, r2 = 1.6, h= 3);
rotate([0,90,0])translate ([-4   ,-4,0])cylinder (r1 = 1.6, r2 = 1.6, h= 3);
};