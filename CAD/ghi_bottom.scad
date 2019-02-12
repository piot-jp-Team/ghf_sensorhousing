$fn = 90;

//bottom

module sens_bottom() {
  union () {
      
        for ( i = [0 : 1] )
        { 
            difference(){
            rotate( [0, 0, i * 180])translate ([24.5,0,8])cube ([8,4,14],true);
            rotate( [0, 0, i * 180])translate ([23,4,13])rotate( [90, 90, 0])cylinder (r1 = 0.85, r2 = 0.85, h= 10);
            rotate( [0, 0, i * 180])translate ([15,0,4])rotate( [90, 90, 90])cylinder (r1 = 1.35, r2 = 1.35, h= 20);
            }
        }
        
     
    difference(){
        union(){
            cylinder (r1 = 57.6/2, r2 = 57.6/2, h= 8);
            cylinder (r1 = 30, r2 = 30, h= 2);
        }
        translate ([0,0,1.5])cylinder (r1 = 27, r2 = 27, h= 19);
        rotate(150)
            translate ([13,0,0]) 
                cylinder (r1 = 6.5, r2 = 6.5, h= 10);
        rotate(270)
            translate ([13,0,0]) 
                cylinder (r1 = 6.5, r2 = 6.5, h= 10);
        rotate(30)
            translate ([13,0,0]) 
                cylinder (r1 = 6.5, r2 = 6.5, h= 10);
      
        for ( i = [0 : 1] )
        { 
            rotate( [0, 0, i * 180])translate ([20,0,4])rotate( [90, 90, 90])cylinder (r1 = 1.35, r2 = 1.35, h= 10);
        }  

        difference(){
            cylinder (r1 = 23, r2 = 23, h= 2);
            cylinder (r1 = 15, r2 = 15, h= 2);
            for ( i = [0 : 35] )
            { 
                rotate( [0, 0, i * 360 / 36])
                translate ([15,0,0]){
                cube ([8,1.5,8]);
              }
            } 
        }
    }
    
    difference(){rotate(150)translate ([13,0,0])cylinder (r1 = 8, r2 = 8, h= 1.5);rotate(150)translate ([13,0,0])cylinder (r1 = 6.5, r2 = 6.5, h= 1.5);}
    difference(){rotate(270)translate ([13,0,0])cylinder (r1 = 8, r2 = 8, h= 1.5);rotate(270)translate ([13,0,0])cylinder (r1 = 6.5, r2 = 6.5, h= 1.5);}
    difference(){rotate(30)translate ([13,0,0])cylinder (r1 = 8, r2 = 8, h= 1.5);rotate(30)translate ([13,0,0])cylinder (r1 = 6.5, r2 = 6.5, h= 1.5);}  
    
  }
 };
 sens_bottom();
/*
translate ([0,0,30])difference(){
cylinder (r1 = 30, r2 = 30, h= 5);
 cylinder (r1 = 58/2, r2 = 58/2, h= 5);
} 
*/