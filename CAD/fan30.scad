echo(version=version());

color("gray")

        linear_extrude(height = 10)
        difference(){
            square([30, 30], center = true);
            circle(13, center = true);
            translate([12, -12, 0])circle(2, center = true);
            translate([12, 12, 0])circle(2, center = true);
            translate([-12, 12, 0])circle(2, center = true);
            translate([-12, -12, 0])circle(2, center = true);
        }
