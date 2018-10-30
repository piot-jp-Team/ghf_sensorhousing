echo(version=version());

color("gray")

        linear_extrude(height = 10)
        difference(){
            square([40, 40], center = true);
            circle(18, center = true);
            translate([16.5, -16.5, 0])circle(2, center = true);
            translate([16.5, 16.5, 0])circle(2, center = true);
            translate([-16.5, 16.5, 0])circle(2, center = true);
            translate([-16.5, -16.5, 0])circle(2, center = true);
        }
