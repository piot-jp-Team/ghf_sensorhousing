$fn = 90;

echo(version=version());

color("gray")

        linear_extrude(height = 10)
        difference(){
            square([30, 30], center = true);
            circle(14.5, center = true);
            translate([12, -12, 0])circle(1.6, center = true);
            translate([12, 12, 0])circle(1.6, center = true);
            translate([-12, 12, 0])circle(1.6, center = true);
            translate([-12, -12, 0])circle(1.6, center = true);
        }
