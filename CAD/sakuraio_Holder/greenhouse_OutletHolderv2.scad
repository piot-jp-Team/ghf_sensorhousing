difference(){
linear_extrude(height = 29, center = false, convexity = 10, twist = 0)
 polygon( points=[
[0,0],
[0,31],
[28,31],
[28,0]
]);
linear_extrude(height = 29, center = false, convexity = 10, twist = 0)
 polygon( points=[
[1.25,2.25],
[1.25,28.75],
[26.75,28.75],
[26.75,2.25]
]);
translate ([0,0,26])cube ([7,31,5]); 
translate ([5,1.25,3])cube ([20,28.5,29]); 
};
difference(){
translate ([0,-8.5,0])cube ([2,48,20]); 
rotate([0,90,0])translate ([-14.5,35,0])cylinder (r1 = 1.6, r2 = 1.6, h= 3);
rotate([0,90,0])translate ([-4   ,35,0])cylinder (r1 = 1.6, r2 = 1.6, h= 3);
rotate([0,90,0])translate ([-14.5,-4,0])cylinder (r1 = 1.6, r2 = 1.6, h= 3);
rotate([0,90,0])translate ([-4   ,-4,0])cylinder (r1 = 1.6, r2 = 1.6, h= 3);
};